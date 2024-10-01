return {
    "lervag/vimtex",
    config = function ()
        -- This is necessary for VimTeX to load properly. The "indent" is optional.
        -- Note that most plugin managers will do this automatically.
        vim.cmd('filetype plugin indent on')

        -- This enables Vim's and neovim's syntax-related features. Without this, some
        -- VimTeX features will not work (see ":help vimtex-requirements" for more
        -- info).
        vim.cmd('syntax enable')

        -- Viewer options: One may configure the viewer either by specifying a built-in
        -- viewer method:
        vim.g.vimtex_view_method = 'skim'
        vim.g.vimtex_view_skim_sync = 1 -- Value 1 allows forward search after every successful compilation
        vim.g.vimtex_view_skim_activate = 1 -- Value 1 allows change focus to skim after command `:VimtexView` is given

        -- VimTeX uses latexmk as the default compiler backend. If you use it, which is
        -- strongly recommended, you probably don't need to configure anything. If you
        -- want another compiler backend, you can change it as follows. The list of
        -- supported backends and further explanation is provided in the documentation,
        -- see ":help vimtex-compiler".
        -- let g:vimtex_compiler_latexmk.options = '-file-line-error -interaction=nonstopmode -synctex=1 -halt-on-error'
        vim.g.vimtex_compiler_method = 'latexmk'
        vim.g.vimtex_compiler_latexmk = {
            options = {
                '-file-line-error',
                '-interaction=nonstopmode',
                '-synctex=1',
                '-halt-on-error',
            },
        }
    end,
}

