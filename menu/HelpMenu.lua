local id = require("BeefStranger.uiHelper.menu.ID")
--- *The Tooltip Menu:*
--- 
--- `Various Elements only exist in specific circumstances`
---@class bs_uiHelpHelpMenu
local Help = {}

---Get the top level HelpMenu Element
---@return tes3uiElement HelpMenu
function Help:get() return tes3ui.findHelpLayerMenu(tes3ui.registerID(id.Help)) end

---Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Help:child(child) return self:get() and self:get():findChild(child) end

---Get the Main ContentElement: Where children are automatically put
---@return tes3uiElement PartHelpMenu_main
function Help:Main() return self:get():getContentElement() end

---Get the TitleBlock | That contains the Icon/Name
---@return tes3uiElement HelpMenu_titleBlock
function Help:TitleBlock() return self:child("HelpMenu_titleBlock") end

---The enchantmentContainer: Only valid on Enchanted Item Tooltips
---@return tes3uiElement HelpMenu_enchantmentContainer
function Help:Enchant() return self:child("HelpMenu_enchantmentContainer") end

---The effectBlock | Spell
---@return tes3uiElement effect
function Help:SpellEffect() return self:child("effect") end

---The Spells name label | Spell Tooltip
---@return tes3uiElement SpellName
function Help:SpellName() return self:child("helptext") end

---The Objects name | Object/Enchant Tooltips
---@return tes3uiElement ObjectName
function Help:ObjectName() return self:child("HelpMenu_name") end

---The Enchants name | Enchant Tooltip
---@return tes3uiElement EnchantName
function Help:EnchantName() return self:child("HelpMenu_enchantEffectLabel") end

---The Enchant cast type label | Enchant Tooltip
---@return tes3uiElement CastType
function Help:EnchantCastType() return self:child("HelpMenu_castType") end

---The Objects weight label | Objects/Enchant Tooltip
---@return tes3uiElement ObjectWeight
function Help:ObjectWeight() return self:child("HelpMenu_weight") end

---The Objects value label | Objects/Enchant Tooltip
---@return tes3uiElement ObjectValue
function Help:ObjectValue() return self:child("HelpMenu_value") end

---The Object that creates the Tooltip | ``Only works on Items/References``
---@return tes3alchemy|tes3apparatus|tes3armor|tes3book|tes3clothing|tes3ingredient|tes3light|tes3lockpick|tes3misc|tes3probe|tes3repairTool|tes3weapon|tes3leveledItem Object
function Help:GetObject() return self:get():getPropertyObject("PartHelpMenu_object") end


return Help