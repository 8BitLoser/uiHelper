local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Repair Menu:*
---
--- `Various Elements can be accessed from the Repair menu.`
---@class bs_uiHelpMenuRepair
local Repair = {}

--- Get the Repair Menu Element
---@return tes3uiElement RepairMenu
function Repair:get() return tes3ui.findMenu(tes3ui.registerID(id.Repair)) end

--- Get the Items Element: Where items available for repair are displayed
---@return tes3uiElement Items
function Repair:Items() return self:get():findChild("PartScrollPane_pane") end

--- Get the Close button Element
---@return tes3uiElement CloseButton
function Repair:Close() return self:get():findChild("MenuRepair_Okbutton") end

return Repair
