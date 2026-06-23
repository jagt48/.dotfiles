local M = {}

function M.setup()
  local pairs = {
    { open = '"', close = '"' },
    { open = "'", close = "'" },
    { open = "(", close = ")" },
    { open = "{", close = "}" },
    { open = "[", close = "]" },
    { open = "<", close = ">" },
  }

  for _, pair in ipairs(pairs) do
    -- Map opening character to insert pair and position cursor
    vim.keymap.set('i', pair.open, pair.open .. pair.close .. '<left>', { noremap = true })

    -- Map closing character to either insert or overwrite
    vim.keymap.set('i', pair.close, function()
      local col = vim.fn.col('.')
      local line = vim.fn.getline('.')
      
      -- Check if the next character is the closing pair
      if col <= #line and line:sub(col, col) == pair.close then
        -- Move cursor past the existing closing character
        return '<right>'
      else
        -- Insert the closing character normally
        return pair.close
      end
    end, { noremap = true, expr = true })
  end
end

return M
