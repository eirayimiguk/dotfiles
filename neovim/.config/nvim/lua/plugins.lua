vim.cmd.packadd "packer.vim"

require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "rstacruz/vim-closer"
    -- use "nvim-telescope/telescope.nvim"
    -- use "artempyanykh/marksman"
    -- use "vim-pandoc/vim-pandoc"
end)
