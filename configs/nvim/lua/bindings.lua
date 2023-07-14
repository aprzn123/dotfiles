local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '
map('n', '<m-n>', '"zdd"zp', opts) -- Move line down
map('n', '<m-e>', '"zdd"zkP', opts) -- Move line up
map('i', '<c-t>', '<esc>', opts) -- return to normalcy
map('n', '<c-d>', ':q<cr>', opts) -- c-d to close file
map('i', '<tab>', 'coc#pum#visible() ? coc#pum#next(1) : "\\<Tab>"',
    {noremap = true, silent = true, expr = true}) -- next item in coc list
map('i', '<s-tab>', 'coc#pum#visible() ? coc#pum#prev(1) : "\\<C-h>"',
    {noremap = true, silent = true, expr = true}) -- prev item in coc list
map('n', '<F2>', '<Plug>(coc-rename)', opts) -- rename
map('n', '<F8>', '<Cmd>TagbarToggle<cr>', opts) -- show ctags
vim.keymap.set('n', 'zR', require('ufo').openAllFolds) -- ufo
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds) -- ufo
vim.keymap.set('n', '<c-->', function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 0.9
end)
vim.keymap.set('n', '<c-=>', function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.1
end)


vim.g.tagbar_map_showproto = '<C-Space>' -- remove tagbar space bar conflict


-- whichkey
local wk = require('whichkey_setup')
wk.config{
    hide_statusline = true,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode='n'
}

wk.register_keymap('leader', {
    s = {
        name = '+jump',
        d = {'<Plug>(coc-definition)', 'definition'},
        r = {'<Plug>(coc-references)', 'references'},
        t = {'<Plug>(coc-type-definition)', 'type definition'},
        s = {'<Cmd>BLines<cr>', 'fzf current buffer'},
        S = {'<Cmd>Lines<cr>', 'fzf all buffers'},
    },
    nt = {'<Cmd>NERDTreeToggle<CR>', 'nerdtree'}, -- originally nt
    rc = {'<Cmd>tabedit $MYVIMRC<cr><Cmd>NERDTree ~/.config/nvim/<cr>', 'nvim config'}, -- originally rc
    c = {
        name = '+appearance',
        d = {'<Cmd>set background=dark<cr>', 'dark'},
        l = {'<Cmd>set background=light<cr>', 'light'},
    },
    e = {'<Cmd>CocDiagnostics<cr>', 'errors'},
    h = {'<Cmd>call CocActionAsync("doHover")<cr>', 'hover'},
    q = {
      name = "+modify",
      q = {'<Plug>(coc-fix-current)', 'quick fix'},
      c = {'<Plug>(coc-codeaction-selected)', 'code actions'},
    },
    l = {
        name = '+latex',
        c = {'<Cmd>VimtexCompile<cr>', 'toggle compile'},
    },
    b = {
        name = '+buffer',
        m = {'<c-w>h', 'left'},
        n = {'<c-w>j', 'down'},
        e = {'<c-w>k', 'up'},
        i = {'<c-w>l', 'right'},
        M = {'<c-w>H', 'move left'},
        N = {'<c-w>J', 'move down'},
        E = {'<c-w>K', 'move up'},
        I = {'<c-w>L', 'move right'},

        t = {'<cmd>Telescope buffers<cr>', 'goto fuzzy'},
    },
})

return false
