local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Barter Menu:*
--- 
--- `Various Elements only exist in specific circumstances`
---@class bs_uiHelpBarterMenu
local Barter = {}

---Get the top level BarterMenu Element
---@return tes3uiElement BarterMenu
function Barter:get() return tes3ui.findMenu(tes3ui.registerID("MenuBarter")) end

---Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Barter:child(child) return self:get() and self:get():findChild(child) end

---The BarterBlock: The container for price display
---@return tes3uiElement BarterBlock
function Barter:BarterBlock() return self:child("MenuBarter_Price").parent end

---The downward arrow button for adjusting barter price
---@return tes3uiElement BarterDown
function Barter:BarterDown() return self:child("MenuBarter_arrowdown") end

---The upward arrow button for adjusting barter price
---@return tes3uiElement BarterUp
function Barter:BarterUp() return self:child("MenuBarter_arrowup") end

---The main content area where buttons are located
---@return tes3uiElement Buttons
function Barter:Buttons() return self:Offer().parent.parent end

---The Close button of the Barter Menu
---@return tes3uiElement Close
function Barter:Close() return self:child("MenuBarter_Cancelbutton") end

---Get the Total Cost/Sold Label
---@return string CostSoldLabel
function Barter:CostSoldLabel() return self:Price().children[1].text end

---The maximum sale limit, reflected by the gold button
---@return tes3uiElement MaxSale
function Barter:MaxSale() return self:child("MenuBarter_Goldbutton") end

---The Offer button in the Barter Menu
---@return tes3uiElement Offer
function Barter:Offer() return self:child("MenuBarter_Offerbutton") end

---Get the numeric value of the current offer price
---@return number displayedOffer
function Barter:displayedOffer() return tonumber(self:Price().children[2].text) end

---The element containing the barter price
---@return tes3uiElement Price
function Barter:Price() return self:child("MenuBarter_Price") end

---The title of the Barter Menu
---@return tes3uiElement Title
function Barter:Title() return self:child("PartDragMenu_title_tint") end

---The text of the Barter Menu title
---@return tes3uiElement TitleText
function Barter:TitleText() return self:child("PartDragMenu_title") end

---Parent block for Ui Expansion Filters, if present
---@return tes3uiElement|nil UiExpFilterBlock
function Barter:UiExpFilterBlock()
    if self:child("UIEXP:FiltersearchBlock") then
        return self:child("UIEXP:FiltersearchBlock").parent.parent
    end
end

---Update the top level BarterMenu layout
---@return tes3uiElement|nil BarterMenu
function Barter:Update()
    if self:get() then
        return self:get():updateLayout()
    end
end

return Barter
