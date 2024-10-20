local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Scroll Menu:*
---
--- `Various Elements only exist in specific circumstances`
---@class bs_uiHelpMenuScroll
local Scroll = {}

---Get the top level ScrollMenu Element
---@return tes3uiElement ScrollMenu
function Scroll:get() return tes3ui.findMenu(tes3ui.registerID(id.Scroll)) end

---Get the first child with this Id/Name in the Scroll Menu
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Scroll:child(child) return self:get():findChild(child) end

---The close button in the Scroll Menu
---@return tes3uiElement Close
function Scroll:Close() return self:child("MenuScroll_Close") end

---The take button (pickup) in the Scroll Menu
---@return tes3uiElement Take
function Scroll:Take() return self:child("MenuBook_PickupButton") end

return Scroll
