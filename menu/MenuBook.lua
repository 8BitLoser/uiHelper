local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Book Menu:*
---
--- `Various Elements can be accessed from the Book menu.`
---@class bs_uiHelpMenuBook
local Book = {}

--- Get the Book Menu Element
---@return tes3uiElement BookMenu
function Book:get() return tes3ui.findMenu(tes3ui.registerID(id.Book)) end

--- Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Book:child(child) return self:get() and self:get():findChild(child) end

--- Get the Close button Element
---@return tes3uiElement CloseButton
function Book:Close() return self:child("MenuBook_button_close") end

--- Get the Take button Element
---@return tes3uiElement TakeButton
function Book:Take() return self:child("MenuBook_button_take") end

return Book
