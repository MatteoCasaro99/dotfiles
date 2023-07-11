" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'general'
let g:vimtex_view_general_viewer = 'sumatrapdf.exe'
let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'

