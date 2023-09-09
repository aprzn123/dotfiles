vim.opt.termguicolors = true
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Ensure that Packer stays updated

    -- Color Schemes
    use { 'dracula/vim', as = 'dracula' }
    use 'arcticicestudio/nord-vim'
    use 'joshdick/onedark.vim'
    use 'morhetz/gruvbox'
    use 'sainnhe/everforest'
    use 'sainnhe/edge'
    use 'edeneast/nightfox.nvim'
    use 'catppuccin/vim'
    use 'drewtempelmeyer/palenight.vim'
    use 'ghifarit53/tokyonight-vim'
    use 'hzchirs/vim-material'

    -- Language Support
    use { 'neoclide/coc.nvim', branch = 'release' } -- LSPs
    use 'preservim/tagbar' -- Ctags
    use 'lervag/vimtex' -- LaTeX
    use 'sirtaj/vim-openscad' -- OpenSCAD syntax highlighting, etc.
    use 'meatballs/vim-xonsh' -- xsh syntax highlighting
    use 'vlelo/arduino-helper.nvim' -- Arduino
    use 'habamax/vim-godot' -- GDScript
    use 'fruit-in/brainfuck-vim' -- brainfuck
    use 'mattn/emmet-vim' -- html emmets
    use {
        'ModProg/cargo.nvim', 
        run = 'makers release',
        config = function()
            require"cargo".setup()
        end
    }

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {'AckslD/nvim-whichkey-setup.lua', requires={ 'liuchengxu/vim-which-key' }} -- keybind helper popup
    use 'junegunn/fzf.vim' -- fuzzy finder
    use 'tpope/vim-commentary' -- Comment things
    use 'preservim/nerdtree' -- NERDTree: File Viewer
    use 'vim-airline/vim-airline' -- status bar
    use 'm4xshen/autoclose.nvim' -- autoclosing brackets, not sure if I'll keep it
    use 'tpope/vim-surround' -- surround text with brackets
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'} -- better folding
    use 'tpope/vim-fugitive' -- git
    use 'junegunn/goyo.vim' -- focus mode

    use 'ryanoasis/vim-devicons' -- icons for NERDTree (must be loaded last)
end)

return false
