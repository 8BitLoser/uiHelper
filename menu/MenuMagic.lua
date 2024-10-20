local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Magic Menu:*
---
--- `Various Elements can be accessed from the Magic menu.`
---@class bs_uiHelpMenuMagic
local Magic = {}

--- Get the Magic Menu Element
---@return tes3uiElement MagicMenu
function Magic:get() return tes3ui.findMenu(id.Magic) end

--- Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Magic:child(child) return self:get() and self:get():findChild(child) end

--- Get the Effect Block Element
---@return tes3uiElement EffectBlock
function Magic:EffectBlock() return self:child("MagicMenu_icons_list_inner") end

--- Get a specific Effect Row Element
---@param rowNumber number 1-3
---@return tes3uiElement EffectRow
function Magic:EffectRow(rowNumber) return self:child("MagicMenu_t_icon_row_" .. rowNumber) end

--- Get the Effect Row 1 Element
---@return tes3uiElement EffectRow1
function Magic:EffectRow1() return self:EffectRow(1) end

--- Get the Effect Row 2 Element
---@return tes3uiElement EffectRow2
function Magic:EffectRow2() return self:EffectRow(2) end

--- Get the Effect Row 3 Element
---@return tes3uiElement EffectRow3
function Magic:EffectRow3() return self:EffectRow(3) end

--- Get the Enchantments Element
---@return tes3uiElement Enchants
function Magic:Enchants() return self:child("MagicMenu_item_names") end

--- Get the Spells Element
---@return tes3uiElement Spells
function Magic:Spells() return self:child("MagicMenu_spell_names") end

return Magic
