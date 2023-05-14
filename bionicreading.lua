local api = vim.api

local function enable_bionic_reading()
    api.nvim_exec([[
    syntax match WordStart /\v<\w{1,3}/ contained
    syntax match WordRest /\v\w{3,}\>/ contained
    syntax region Word start=/\v<\w{1,}/ end=/\v\w{1,}\>/ contains=WordStart,WordRest
    highlight WordStart guifg=gold
    highlight WordRest guifg=darkgray
    ]], false)
end

local function disable_bionic_reading()
    api.nvim_exec([[
    syntax clear Word
    syntax clear WordStart
    syntax clear WordRest
    ]], false)
end

local function toggle_bionic_reading()
    if vim.g.bionic_reading_enabled then
        disable_bionic_reading()
        vim.g.bionic_reading_enabled = false
    else
        enable_bionic_reading()
        vim.g.bionic_reading_enabled = true
    end
end

return {
    enable = enable_bionic_reading,
    disable = disable_bionic_reading,
    toggle = toggle_bionic_reading,
}

