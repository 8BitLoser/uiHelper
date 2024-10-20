local id = require("BeefStranger.uiHelper.menu.ID")

--- *The Journal Menu:*
---
--- `Various Elements can be accessed from the Journal menu.`
---@class bs_uiHelpMenuJournal
local Journal = {}

--- Get the Journal Menu Element
---@return tes3uiElement JournalMenu
function Journal:get() return tes3ui.findMenu(tes3ui.registerID(id.Journal)) end

--- Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Journal:child(child) return self:get() and self:get():findChild(child) end

--- Get the Close button Element
---@return tes3uiElement CloseButton
function Journal:Close() return self:child("MenuBook_button_close") end

return Journal
