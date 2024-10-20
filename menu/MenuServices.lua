local id = require("BeefStranger.uiHelper.menu.ID")

--- *The 4 Services Menu:*
---
--- `Various Elements only exist in specific circumstances`
---@class bs_uiHelpMenuServices
local Services = {}

--- *Repair Service Menu:*
---@class bs_uiHelpMenuServiceRepair
Services.Repair = {}
---Get the top level ServiceRepairMenu Element
---@return tes3uiElement ServiceRepairMenu
function Services.Repair:get() return tes3ui.findMenu(tes3ui.registerID(id.ServiceRepair)) end

---Get the first child with this Id/Name in Repair service
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Services.Repair:child(child) return self:get() and self:get():findChild(child) end

---The close button in the Repair service menu
---@return tes3uiElement Close
function Services.Repair:Close() return self:child("MenuServiceRepair_Okbutton") end


--- *Spells Service Menu:*
---@class bs_uiHelpMenuServiceSpells
Services.Spells = {}

---Get the top level ServiceSpellsMenu Element
---@return tes3uiElement ServiceSpellsMenu
function Services.Spells:get() return tes3ui.findMenu(tes3ui.registerID(id.ServiceSpells)) end

---Get the first child with this Id/Name in Spells service
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Services.Spells:child(child) return self:get() and self:get():findChild(child) end

---The close button in the Spells service menu
---@return tes3uiElement Close
function Services.Spells:Close() return self:child("MenuServiceSpells_Okbutton") end

---The spells block in the Spells service menu
---@return tes3uiElement Spells
function Services.Spells:Spells() return self:child("MenuServiceSpells_Spells") end


--- *Training Service Menu:*
---@class bs_uiHelpMenuServiceTraining
Services.Train = {}

---Get the top level ServiceTrainingMenu Element
---@return tes3uiElement ServiceTrainingMenu
function Services.Train:get() return tes3ui.findMenu(tes3ui.registerID(id.ServiceTraining)) end

---Get the first child with this Id/Name in Training service
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Services.Train:child(child) return self:get() and self:get():findChild(child) end

---The close button in the Training service menu
---@return tes3uiElement Close
function Services.Train:Close() return self:child("UIEXP_MenuTraining_Cancel") end


--- *Travel Service Menu:*
---@class bs_uiHelpMenuServiceTravel
Services.Travel = {}

---Get the top level ServiceTravelMenu Element
---@return tes3uiElement ServiceTravelMenu
function Services.Travel:get() return tes3ui.findMenu(tes3ui.registerID(id.ServiceTravel)) end

---Get the first child with this Id/Name in Travel service
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Services.Travel:child(child) return self:get() and self:get():findChild(child) end

---The travel destinations block in the Travel service menu
---@return tes3uiElement Destination
function Services.Travel:Destination() return self:child("PartScrollPane_pane") end

---The close button in the Travel service menu
---@return tes3uiElement Close
function Services.Travel:Close() return self:child("MenuServiceTravel_Okbutton") end

return Services
