local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Inventory Select Menu:*
---
--- `Various Elements can be accessed from the Inventory Select menu.`
---@class bs_uiHelpMenuInventorySelect
local InventorySelect = {}

--- Get the Inventory Select Menu Element
---@return tes3uiElement InventorySelectMenu
function InventorySelect:get() return tes3ui.findMenu(tes3ui.registerID(id.InventorySelect)) end

--- Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function InventorySelect:child(child) return self:get() and self:get():findChild(child) end

--- Get the Close button Element
---@return tes3uiElement CloseButton
function InventorySelect:Close() return self:child("MenuInventorySelect_button_cancel") end

return InventorySelect
