local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Inventory Menu:*
---
--- `Various Elements can be accessed from the Inventory menu.`
---@class bs_uiHelpMenuInventory
local Inventory = {}

---Get the Inventory Menu Element
---@return tes3uiElement InventoryMenu
function Inventory:get() return tes3ui.findMenu(tes3ui.registerID(id.Inventory)) end

---Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Inventory:child(child) return self:get() and self:get():findChild(child) end

---Get the player encumberance bar
---@return tes3uiElement WeightBar `MenuInventory_Weightbar`
function Inventory:WeightBar() return self:child("MenuInventory_Weightbar") end

---Get the inventory Filter Buttons
---@return tes3uiElement FilterButtons `MenuInventory_Weightbar`
function Inventory:FilterButtons() return self:child("MenuInventory_button_layout") end

---Get the CharacterBox
---@return tes3uiElement CharacterBox `MenuInventory_character_box`
function Inventory:CharacterBox() return self:child("MenuInventory_character_box") end

---Get the Item Tiles Element: Where items are displayed
---@return tes3uiElement ItemScrollPane `PartScrollPane_pane`
function Inventory:ItemScrollPane() return self:child("PartScrollPane_pane") end

---Get the children of `ItemsScrollPane` | Chilren = Number of Columns
---@return tes3uiElement[] ItemScrollPane.children
function Inventory:ItemTileColumns() return self:ItemScrollPane().children end

---Get a specific item in the Item Tiles
---@param column number The column index of the item
---@param row number The row index of the item
---@return tes3uiElement item
function Inventory:Item(column, row) return self:ItemScrollPane().children[column].children[row] end

return Inventory
