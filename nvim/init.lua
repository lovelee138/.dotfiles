vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/folke/tokyonight.nvim.git",
  "https://github.com/stevearc/oil.nvim",
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/nvim-mini/mini.nvim',            
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})
require('render-markdown').setup({}) -- only mandatory if you want to set custom options
-- lsp 
vim.lsp.enable("pyright")

-- scheme
vim.opt.termguicolors = true
vim.cmd([[colorscheme tokyonight]])

vim.o.langmap = [[йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],]]
    .. [[фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\;,э',]]
    .. [[яz,чx,сc,мv,иb,тn,ьm,б\,,ю.,]]
    .. [[ЁQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},]]
    .. [[ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\:,Э",]]
    .. [[ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>]]

vim.keymap.set({ "n", "x" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "x" }, "<leader>p", '"+p')
vim.keymap.set({ "n", "x" }, "<leader>P", '"+P')

vim.o.winborder = "rounded"
vim.g.netrw_banner = 0
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.hlsearch = false

-- всё для пухлых файловых менеджеров
vim.keymap.set("n", "<leader>-", require("oil").toggle_float)
require("mini.icons").setup()
require("oil").setup({
    default_file_explorer = true,
    watch_for_changes = true,
    columns = { { "icon", add_padding = false } },
    view_options = { show_hidden = true },
    float = {
        max_width = 0.8,
        preview_split = "right",
        win_options = { winhighlight = "NormalNC:NormalFloat" },
    },
})
