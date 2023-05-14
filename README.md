# BioNvim

This is a Neovim plugin that provides a "bionic reading" mode, which is designed to improve focus and understanding while reading text. In bionic reading mode, the first third of each word is highlighted in white and the rest of the word is grayed out.

## Installation

If you're using a plugin manager, follow the instructions provided by your plugin manager. For example, if you're using Lazy.nvim, you can add this repository as a plugin in your Neovim configuration file:

```lua
require'lazy_nvim'.add_plugins({
    { repo = 'username/bionicreading' },  -- replace 'username' with your GitHub username
})
```

Then run the `:LazyInstall` command in Neovim to install the plugin.

If you're not using a plugin manager, you can manually clone this repository into your ~/.config/nvim/pack/start/ directory.

## Usage

Once the plugin is installed, you can control bionic reading mode with the following commands:

`:BionicReadingEnable` enables bionic reading mode.
`:BionicReadingDisable` disables bionic reading mode.
`:BionicReadingToggle` toggles bionic reading mode on and off.

## Contributing

We welcome contributions from the community. Please open an issue if you find a bug or have a feature request. If you'd like to contribute code, feel free to fork this repository and open a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
