local id = require("BeefStranger.uiHelper.menu.ID")
local bs = require("BeefStranger.uiHelper.common")

---@class bs_uiHelpMenuPersuasion
local Persuasion = {}

---Get the top level PersuasionMenu Element
---@return tes3uiElement? MenuPersuasion
function Persuasion:get() return tes3ui.findMenu(tes3ui.registerID(id.Persuasion)) end

---Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement? childElement
function Persuasion:child(child) return self:get() and self:get():findChild(child) end

---Find the "Admire" option in the ServiceList
---@return tes3uiElement? Admire
function Persuasion:Admire() return bs:findText(self:ServiceList(), "Admire") end

---Find the "Bribe 10" option in the ServiceList
---@return tes3uiElement? Bribe10
function Persuasion:Bribe10() return bs:findText(self:ServiceList(), "bribe 10") end

---Find the "Bribe 100" option in the ServiceList
---@return tes3uiElement? Bribe100
function Persuasion:Bribe100() return bs:findText(self:ServiceList(), "bribe 100") end

---Find the "Bribe 1000" option in the ServiceList
---@return tes3uiElement? Bribe1000
function Persuasion:Bribe1000() return bs:findText(self:ServiceList(), "bribe 1000") end

---Find the "Intimidate" option in the ServiceList
---@return tes3uiElement? Intimidate
function Persuasion:Intimidate() return bs:findText(self:ServiceList(), "intimidate") end

---Find the "Gold" amount in the Footer
---@return tes3uiElement? Gold
function Persuasion:Gold() return bs:findText(self:Footer(), "Gold:") end

---Find the "Taunt" option in the ServiceList
---@return tes3uiElement? Taunt
function Persuasion:Taunt() return bs:findText(self:ServiceList(), "taunt") end

---Get the close (Ok) button in the Persuasion menu
---@return tes3uiElement? Close
function Persuasion:Close() return self:child("MenuPersuasion_Okbutton") end

---Get the footer section of the Persuasion menu
---@return tes3uiElement? Footer
function Persuasion:Footer() return self:child("MenuPersuasion_Okbutton").parent end

---Get the service list section of the Persuasion menu
---@return tes3uiElement? ServiceList
function Persuasion:ServiceList() return self:child("MenuPersuasion_ServiceList") end

---Check if the Persuasion menu is visible
---@return boolean Visible
function Persuasion:Visible() return self:get() and self:get().visible end

return Persuasion
