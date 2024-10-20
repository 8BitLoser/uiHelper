local id = require("BeefStranger.uiHelper.menu.ID")
--- *The Dialog Menu:*
---
--- `Various Elements only exist in specific circumstances`
---@class bs_uiHelpMenuDialog
local Dialog = {}

---Get the top level DialogMenu Element
---@return tes3uiElement DialogMenu
function Dialog:get() return tes3ui.findMenu(tes3ui.registerID(id.Dialog)) end

---Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Dialog:child(child) return self:get() and self:get():findChild(child) end

---The Barter button in the Dialog Menu
---@return tes3uiElement Barter
function Dialog:Barter() return self:child("MenuDialog_service_barter") end

---The Close (Goodbye) button in the Dialog Menu
---@return tes3uiElement Close
function Dialog:Close() return self:child("MenuDialog_button_bye") end

---The Companion option in the Dialog Menu
---@return tes3uiElement Companion
function Dialog:Companion() return self:child("MenuDialog_service_companion") end

---The Enchanting service option in the Dialog Menu
---@return tes3uiElement Enchanting
function Dialog:Enchanting() return self:child("MenuDialog_service_enchanting") end

---Get the Service block (parent) containing service options
---@return tes3uiElement GetService
function Dialog:GetService() return self:Spells().parent end

---The Persuasion button in the Dialog Menu
---@return tes3uiElement Persuasion
function Dialog:Persuasion() return self:child("MenuDialog_persuasion") end

---The Repair service option in the Dialog Menu
---@return tes3uiElement Repair
function Dialog:Repair() return self:child("MenuDialog_service_repair") end

---The Spellmaking service option in the Dialog Menu
---@return tes3uiElement Spellmaking
function Dialog:Spellmaking() return self:child("MenuDialog_service_spellmaking") end

---The Spells service option in the Dialog Menu
---@return tes3uiElement Spells
function Dialog:Spells() return self:child("MenuDialog_service_spells") end

---The title tint element in the Dialog Menu
---@return tes3uiElement Title
function Dialog:Title() return self:child("PartDragMenu_title_tint") end

---The title text in the Dialog Menu
---@return tes3uiElement TitleText
function Dialog:TitleText() return self:child("PartDragMenu_title") end

---The Training service option in the Dialog Menu
---@return tes3uiElement Training
function Dialog:Training() return self:child("MenuDialog_service_training") end

---The Travel service option in the Dialog Menu
---@return tes3uiElement Travel
function Dialog:Travel() return self:child("MenuDialog_service_travel") end

---Check if the Dialog Menu is visible
---@return boolean visible
function Dialog:Visible() return self:get() and self:get().visible end

return Dialog