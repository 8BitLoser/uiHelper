local id = require("BeefStranger.uiHelper.menu.ID")
--- *The SetValues Submenu:*
---
--- `The Submenu that opens in Spell Creation`
---@class bs_uiHelpMenuSetValues
local SetValues = {}

---Get the top level SetValuesMenu Element
---@return tes3uiElement SetValuesMenu
function SetValues:get() return tes3ui.findMenu(tes3ui.registerID(id.SetValues)) end

---Get the first child with this Id/Name in SetValues
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function SetValues:child(child) return self:get():findChild(child) end

---The close (cancel) button in the SetValues submenu
---@return tes3uiElement Close
function SetValues:Close() return self:child("MenuSetValues_Cancelbutton") end

return SetValues