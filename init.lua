-- init.lua
local bionicreading = require 'bionicreading.bionicreading'

vim.cmd [[
  augroup BionicReadingCommands
    autocmd!
    autocmd VimEnter * command! BionicReadingEnable lua require'bionicreading'.enable()
    autocmd VimEnter * command! BionicReadingDisable lua require'bionicreading'.disable()
    autocmd VimEnter * command! BionicReadingToggle lua require'bionicreading'.toggle()
  augroup END
]]

return {
    enable = bionicreading.enable,
    disable = bionicreading.disable,
    toggle = bionicreading.toggle,
}

