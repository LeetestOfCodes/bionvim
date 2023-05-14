local bionicreading = require 'bionicreading.bionicreading'

vim.cmd [[
    command! BionicReadingEnable lua require'bionicreading'.enable()
    command! BionicReadingDisable lua require'bionicreading'.disable()
    command! BionicReadingToggle lua require'bionicreading'.toggle()
]]

return {
    enable = bionicreading.enable,
    disable = bionicreading.disable,
    toggle = bionicreading.toggle,
}

