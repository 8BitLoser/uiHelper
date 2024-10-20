local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Multi Menu:*
---
--- `Various Elements can be accessed from the Multi menu.`
---@class bs_uiHelpMenuMulti
local Multi = {}

--- Get the Multi Menu Element
---@return tes3uiElement MultiMenu
function Multi:get() return tes3ui.findMenu(tes3ui.registerID(id.Multi)) end

--- Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Multi:child(child) return self:get() and self:get():findChild(child) end

--- Get the Enchantment Container Element
---@return tes3uiElement EnchantContainer
function Multi:Enchant() return self:child("HelpMenu_enchantmentContainer") end

--- Get the Magic Icon Layout Element
---@return tes3uiElement MagicIconLayout
function Multi:MagicIconLayout() return self:child("MenuMulti_magic_icons_layout") end

--- Get a specific Effect Row Element
---@param rowNumber number 1-3
---@return tes3uiElement IconRow
function Multi:MagicIconRow(rowNumber) return self:child("MenuMulti_magic_icons_" .. rowNumber) end

--- Get the Magic Icons 1 Element
---@return tes3uiElement MagicIcons1
function Multi:MagicIcons1() return self:child("MenuMulti_magic_icons_1") end

--- Get the Magic Icons 2 Element
---@return tes3uiElement MagicIcons2
function Multi:MagicIcons2() return self:child("MenuMulti_magic_icons_2") end

--- Get the Magic Icons 3 Element
---@return tes3uiElement MagicIcons3
function Multi:MagicIcons3() return self:child("MenuMulti_magic_icons_3") end

--- Get the Magic Icons Box Element
---@return tes3uiElement MagicIconsBox
function Multi:MagicIconsBox() return self:child("MenuMulti_magic_icons_box") end

return Multi
