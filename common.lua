local common = {}

---Finds Elements .text | Useful for unnamed Elements, Only searches 2 children deep
---@param element tes3uiElement
---@param string string
---@return tes3uiElement|nil
function common:findText(element, string)
    for i, v in ipairs(element.children) do
        local childText = v.text or ""
        if childText:lower():find(string:lower(), 1, true) then
            debug.log(v)
            return v
        else
            for index, value in ipairs(v.children) do
                childText = value.text or ""
                if childText:lower():find(string:lower(), 1, true) then
                    debug.log(value.text)
                    return value
                end
            end
        end
    end
    return nil
end

return common