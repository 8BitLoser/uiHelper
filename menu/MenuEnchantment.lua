local id = require("BeefStranger.uiHelper.menu.ID")

---@class bs_uiHelpMenuEnchantment
local Enchant = {}

---Get the top level EnchantmentMenu Element
---@return tes3uiElement? MenuEnchantment
function Enchant:get() return tes3ui.findMenu(id.Enchantment) end

---Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement? childElement
function Enchant:child(child) return self:get() and self:get():findChild(child) end

---Get the price container element in the Enchantment menu
---@return tes3uiElement? Price
function Enchant:PriceContainer() return self:child("MenuEnchantment_priceContainer") end

---Get the price label element in the Enchantment menu
---@return tes3uiElement? PriceLabel
function Enchant:PriceLabel() return self:child("MenuEnchantment_priceLabel") end

---Get the close (cancel) button in the Enchantment menu
---@return tes3uiElement? Close
function Enchant:Close() return self:child("MenuEnchantment_Cancelbutton") end

return Enchant
