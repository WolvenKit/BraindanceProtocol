local Utilities = require("braindance_protocol.utility")

local Johnny = {}

function Johnny.AddItems()
    local moduleName = "Add Johnny's Items"
    Utilities.StartProtocol(moduleName)

    Utilities.AddItem("Q005_Johnny_Glasses", 1)
    Utilities.AddItem("Q204_samurai_jacket", 1)
    Utilities.AddItem("Q005_Johnny_Shirt", 1)
    Utilities.AddItem("Q005_Johnny_Pants", 1)
    Utilities.AddItem("Q005_Johnny_Shoes", 1)

    Utilities.FinishProtocol(moduleName)
end

return Johnny
