local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Spellmaking Menu:*
---
--- `Various Elements only exist in specific circumstances`
---@class bs_uiHelpMenuSpellMaking
local Spellmaking = {}

---Get the top level SpellmakingMenu Element
---@return tes3uiElement SpellmakingMenu
function Spellmaking:get() return tes3ui.findMenu(tes3ui.registerID(id.Spellmaking)) end

---Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Spellmaking:child(child) return self:get():findChild(child) end

---The price layout container for spellmaking
---@return tes3uiElement Price
function Spellmaking:Price() return self:child("MenuSpellmaking_PriceLayout") end

---The bottom spacer element in the Spellmaking menu
---@return tes3uiElement BottomSpacer
function Spellmaking:BottomSpacer() return self:child("MenuSpellmaking_BottomSpacer") end

---The close (cancel) button in the Spellmaking menu
---@return tes3uiElement Close
function Spellmaking:Close() 
    return self:child("MenuSpellmaking_Cancelbutton") 
end


return Spellmaking