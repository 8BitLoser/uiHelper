local id = require("BeefStranger.uiHelper.menu.ID")

---@class bs_uiHelpMenuRestWait
local Rest = {}

---Get the top level RestWaitMenu Element
---@return tes3uiElement? MenuRestWait
function Rest:get() return tes3ui.findMenu(tes3ui.registerID(id.RestWait)) end

---Get the first child with this Id/Name
---@param child string|number The Id/Name of the child element
---@return tes3uiElement childElement
function Rest:child(child) return self:get():findChild(child) end

---The slider element in the RestWait menu
---@return tes3uiElement Slider
function Rest:Slider() return self:child("MenuRestWait_scrollbar") end

---The widget inside the slider
---@return tes3uiSlider? SliderWidget
function Rest:SliderWidget() return self:Slider().widget end

---The button layout container for RestWait
---@return tes3uiElement Buttons
function Rest:Buttons() return self:child("MenuRestWait_buttonlayout") end

---The "Wait" button in the RestWait menu
---@return tes3uiElement Wait
function Rest:Wait() return self:child("MenuRestWait_wait_button") end

---The "Rest" button in the RestWait menu
---@return tes3uiElement Rest
function Rest:Rest() return self:child("MenuRestWait_rest_button") end

---The "Until Healed" button in the RestWait menu
---@return tes3uiElement UntilHealed
function Rest:UntilHealed() return self:child("MenuRestWait_untilhealed_button") end

---The close (cancel) button in the RestWait menu
---@return tes3uiElement Close
function Rest:Close() return self:child("MenuRestWait_cancel_button") end

return Rest

