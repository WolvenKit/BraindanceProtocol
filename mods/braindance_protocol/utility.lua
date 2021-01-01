local Utilities = {}

function Utilities.StartProtocol(name)
    print("---------------------------------------------------------------------")
    print(string.format("Executing Protocol: %s", name))
    print("---------------------------------------------------------------------")
end

function Utilities.FinishProtocol(name)
    print("---------------------------------------------------------------------")
    print(string.format("Finished Protocol: %s", name))
    print("---------------------------------------------------------------------")
    print("")
end

-- function Utilities.Sleep(s)
--     local ntime = os.time() + s
--     repeat until os.time() > ntime
-- end

return Utilities