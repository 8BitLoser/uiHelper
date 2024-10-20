local id = require("BeefStranger.uiHelper.menu.ID")
---@class bs_uiHelpMenuContents
local MenuContents = {}

--- *The Contents Menu:*
---
--- `Various elements can be accessed from the Contents Menu.`
---@class bs_uiHelpMenuContents
local MenuContents = {}

--- Get the Contents Menu Element
---@return tes3uiElement? ContentsMenu
function MenuContents:get() return tes3ui.findMenu(id.Contents) end

--- Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement? childElement
function MenuContents:child(child) return self:get() and self:get():findChild(child) or nil end

--- Get the Button Block Element
---@return tes3uiElement? ButtonBlock
function MenuContents:ButtonBlock() return self:child("Buttons") end

--- Get the Close Button Element
---@return tes3uiElement? CloseButton
function MenuContents:Close() return self:child("MenuContents_closebutton") end

--- Get the Dispose Corpse Button Element
---@return tes3uiElement? DisposeButton
function MenuContents:Dispose() return self:child("MenuContents_removebutton") end

--- Get the Items Scroll Pane Element
---@return tes3uiElement? ItemsScrollPane
function MenuContents:Items() return self:child("MenuContents_scrollpane"):getContentElement() end

--- Get the Take All Button Element
---@return tes3uiElement? TakeAllButton
function MenuContents:TakeAll() return self:child("MenuContents_takeallbutton") end

--- Get the Title Block Element
---@return tes3uiElement? TitleBlock
function MenuContents:TitleBlock() return self:child("PartDragMenu_title_tint") end

--- Check if the menu is for pickpocketing
---@return boolean isPickpocket
function MenuContents:isPickpocket() return self:get():getPropertyInt("MenuContents_PickPocket") == 1 end

--- Get the Actor associated with the menu
---@return tes3mobileActor|tes3mobileNPC? Actor
function MenuContents:Actor() return self:get():getPropertyObject("MenuContents_Actor") or nil end

--- Get the Title Text Element
---@return tes3uiElement? TitleText
function MenuContents:TitleText() return self:child("PartDragMenu_title") end

--- Get the UIExp Capacity Fillbar Element
---@return tes3uiElement? UIExp_CapacityFillbar
function MenuContents:UIExp_Capacity() return self:child("UIEXP_MenuContents_capacity") end

--- Get the UIExp Filter Block Element
---@return tes3uiElement? UIExp_FilterBlock
function MenuContents:UIExp_Filter() return self:child("UIEXP:ContentsMenu:FilterBlock") end


return MenuContents