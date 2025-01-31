local function autocomplete_handler()
    -- Get the current line and cursor position
    local line = vim.api.nvim_get_current_line()
    local col = vim.api.nvim_win_get_cursor(0)[2] + 1 -- Convert to Lua's 1-based indexing

    -- Check for '@' at the first character or anywhere in the line
    local prefix = nil
    local start_col = nil

    -- Special case: Cursor at the first character of the line
    if col == 1 and line:sub(1, 1) == "@" then
        prefix = ""
        start_col = 1
    else
        -- Search backward from the cursor position to find '@'
        for i = col, 1, -1 do
            local char = line:sub(i, i)
            if char == "@" then
                -- Check if this '@' starts a valid word
                local candidate = line:sub(i, col):match("^@%w*")
                if candidate then
                    prefix = candidate:sub(2) -- Strip the '@'
                    start_col = i
                    break
                end
            elseif char:match("%s") then
                break -- Stop at whitespace
            end
        end
    end

    -- Generate and display suggestions if a valid word is found
    if start_col and prefix ~= nil then
        local suggestions = {}
        local all_suggestions = { "apple", "banana", "dog", "door", "durian", "cat", "carrot" }

        -- Filter suggestions
        for _, suggestion in ipairs(all_suggestions) do
            if suggestion:sub(1, #prefix) == prefix then
                table.insert(suggestions, suggestion)
            end
        end

        -- Trigger the completion menu
        if #suggestions > 0 then
            vim.fn.complete(start_col - 1, suggestions)
        else
            vim.fn.complete(start_col - 1, {})
        end
    end
end

return {
    "rolodex.nvim",
    dir = vim.fn.stdpath("config") .. "/bin",
    lazy = false,
    config = function()
        vim.api.nvim_create_autocmd({ "TextChangedI", "TextChangedP" }, {
            pattern = "*",
            callback = function()
                autocomplete_handler()
            end
        })
    end,
}

