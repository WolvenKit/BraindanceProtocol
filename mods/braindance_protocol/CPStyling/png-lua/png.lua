-- The MIT License (MIT)

-- Copyright (c) 2013 DelusionalLogic

-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this software and associated documentation files (the "Software"), to deal in
-- the Software without restriction, including without limitation the rights to
-- use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
-- the Software, and to permit persons to whom the Software is furnished to do so,
-- subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
-- FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
-- COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
-- IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
-- CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

local currentFilePath = "CPStyling/png-lua/"
local deflate = require(currentFilePath.."deflatelua")
local requiredDeflateVersion = "0.3.20111128"

if (deflate._VERSION ~= requiredDeflateVersion) then
    error("Incorrect deflate version: must be "..requiredDeflateVersion..", not "..deflate._VERSION)
end

local function bsRight(num, pow)
    return math.floor(num / 2^pow)
end

local function bsLeft(num, pow)
    return math.floor(num * 2^pow)
end

local function bytesToNum(bytes)
    local n = 0
    for k,v in ipairs(bytes) do
        n = bsLeft(n, 8) + v
    end
    if (n > 2147483647) then
        return (n - 4294967296)
    else
        return n
    end
    n = (n > 2147483647) and (n - 4294967296) or n
    return n
end

local function readInt(stream, bps)
    local bytes = {}
    bps = bps or 4
    for i=1,bps do
        bytes[i] = stream:read(1):byte()
    end
    return bytesToNum(bytes)
end

local function readChar(stream, num)
    num = num or 1
    return stream:read(num)
end

local function readByte(stream)
    return stream:read(1):byte()
end

local function getDataIHDR(stream, length)
    local data = {}
    data["width"] = readInt(stream)
    data["height"] = readInt(stream)
    data["bitDepth"] = readByte(stream)
    data["colorType"] = readByte(stream)
    data["compression"] = readByte(stream)
    data["filter"] = readByte(stream)
    data["interlace"] = readByte(stream)
    return data
end

local function getDataIDAT(stream, length, oldData)
    local data = {}
    if (oldData == nil) then
        data.data = readChar(stream, length)
    else
        data.data = oldData.data .. readChar(stream, length)
    end
    return data
end

local function getDataPLTE(stream, length)
    local data = {}
    data["numColors"] = math.floor(length/3)
    data["colors"] = {}
    for i = 1, data["numColors"] do
        data.colors[i] = {
            R = readByte(stream),
            G = readByte(stream),
            B = readByte(stream)
        }
    end
    return data
end

local function extractChunkData(stream)
    local chunkData = {}
    local length
    local type
    local crc

    while type ~= "IEND" do
        length = readInt(stream)
        type = readChar(stream, 4)
        if (type == "IHDR") then
            chunkData[type] = getDataIHDR(stream, length)
        elseif (type == "IDAT") then
            chunkData[type] = getDataIDAT(stream, length, chunkData[type])
        elseif (type == "PLTE") then
            chunkData[type] = getDataPLTE(stream, length)
        else
            readChar(stream, length)
        end
        crc = readChar(stream, 4)
    end

    return chunkData
end

local function makePixel(stream, depth, colorType, palette)
    local bps = math.floor(depth/8) --bits per sample
    local pixelData = { R = 0, G = 0, B = 0, A = 0 }
    local grey
    local index
    local color

    if colorType == 0 then
        grey = readInt(stream, bps)
        pixelData.R = grey
        pixelData.G = grey
        pixelData.B = grey
        pixelData.A = 255
    elseif colorType == 2 then
        pixelData.R = readInt(stream, bps)
        pixelData.G = readInt(stream, bps)
        pixelData.B = readInt(stream, bps)
        pixelData.A = 255
    elseif colorType == 3 then
        index = readInt(stream, bps)+1
        color = palette.colors[index]
        pixelData.R = color.R
        pixelData.G = color.G
        pixelData.B = color.B
        pixelData.A = 255
    elseif colorType == 4 then
        grey = readInt(stream, bps)
        pixelData.R = grey
        pixelData.G = grey
        pixelData.B = grey
        pixelData.A = readInt(stream, bps)
    elseif colorType == 6 then
        pixelData.R = readInt(stream, bps)
        pixelData.G = readInt(stream, bps)
        pixelData.B = readInt(stream, bps)
        pixelData.A = readInt(stream, bps)
    end

    return pixelData
end

local function bitFromColorType(colorType)
    if colorType == 0 then return 1 end
    if colorType == 2 then return 3 end
    if colorType == 3 then return 1 end
    if colorType == 4 then return 2 end
    if colorType == 6 then return 4 end
    error 'Invalid colortype'
end

local function paethPredict(a, b, c)
    local p = a + b - c
    local varA = math.abs(p - a)
    local varB = math.abs(p - b)
    local varC = math.abs(p - c)

    if varA <= varB and varA <= varC then
        return a
    elseif varB <= varC then
        return b
    else
        return c
    end
end

local function filterType1(curPixel, lastPixel)
    local lastByte
    local newPixel = {}
    for fieldName, curByte in pairs(curPixel) do
        lastByte = lastPixel and lastPixel[fieldName] or 0
        newPixel[fieldName] = (curByte + lastByte) % 256
    end
    return newPixel
end

local prevPixelRow = {}
local function getPixelRow(stream, depth, colorType, palette, length)
    local pixelRow = {}
    local bpp = math.floor(depth/8) * bitFromColorType(colorType)
    local bpl = bpp*length
    local filterType = readByte(stream)

    if filterType == 0 then
        for x = 1, length do
            pixelRow[x] = makePixel(stream, depth, colorType, palette)
        end
    elseif filterType == 1 then
        local curPixel
        local lastPixel
        local newPixel
        local lastByte
        for x = 1, length do
            curPixel = makePixel(stream, depth, colorType, palette)
            lastPixel = prevPixelRow[pixelNum]
            newPixel = {}
            for fieldName, curByte in pairs(curPixel) do
                lastByte = lastPixel and lastPixel[fieldName] or 0
                newPixel[fieldName] = (curByte + lastByte) % 256
            end
            pixelRow[x] = newPixel
        end
    else
        error("Unsupported filter type: " .. tostring(filterType))
    end
    prevPixelRow = pixelRow

    return pixelRow
end


local function pngImage(path, progCallback, verbose, memSave)
    local stream = io.open(path, "rb")
    local chunkData
    local imStr
    local width = 0
    local height = 0
    local depth = 0
    local colorType = 0
    local output = {}
    local pixels = {}
    local StringStream
    local function printV(msg)
        if (verbose) then
            print(msg)
        end
    end

    if readChar(stream, 8) ~= "\137\080\078\071\013\010\026\010" then
        error "Not a png"
    end

    printV("Parsing Chunks...")
    chunkData = extractChunkData(stream)

    width = chunkData.IHDR.width
    height = chunkData.IHDR.height
    depth = chunkData.IHDR.bitDepth
    colorType = chunkData.IHDR.colorType

    printV("Deflating...")
    deflate.inflate_zlib {
        input = chunkData.IDAT.data,
        output = function(byte)
            output[#output+1] = string.char(byte)
        end,
        disable_crc = true
    }
    StringStream = {
        str = table.concat(output),
        read = function(self, num)
            local toreturn = self.str:sub(1, num)
            self.str = self.str:sub(num + 1, self.str:len())
            return toreturn
        end
    }

    printV("Creating pixelmap...")
    for i = 1, height do
        local pixelRow = getPixelRow(StringStream, depth, colorType, chunkData.PLTE, width)
        if progCallback ~= nil then
            progCallback(i, height, pixelRow)
        end
        if not memSave then
            pixels[i] = pixelRow
        end
    end

    printV("Done.")
    return {
        width = width,
        height = height,
        depth = depth,
        colorType = colorType,
        pixels = pixels
    }
end

return pngImage
