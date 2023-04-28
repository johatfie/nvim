-- autocmd! remove all autocommands, if entered under a group it will clear that group
vim.cmd [[
    augroup _general_settings
        autocmd!
        autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
        autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Search', timeout = 200})
        autocmd BufWinEnter * :set formatoptions-=cro
        autocmd FileType qf set nobuflisted

        au BufWinLeave * silent! mkview             " make vim save view (state) (folds, cursor, etc)
        au BufWinEnter * silent! loadview           " make vim load view (state) (folds, cursor, etc)

        "autocmd BufEnter * silent! lcd %:p:h        " change local current directory to the directory of the current file

        autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
        autocmd Filetype json setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
        autocmd Filetype lua setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
        autocmd Filetype vue setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
        autocmd Filetype yaml,yml  setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

        "execute the current line, then re-open the command window at the same line
        "autocmd CmdwinEnter * nnoremap <buffer> <F5> <CR>q:
        autocmd CmdwinEnter * nnoremap <buffer> <F5> :let g:CmdWindowLineMark=line(".")<CR>

        " For all text files set 'textwidth' to 100 characters.
        autocmd FileType text setlocal textwidth=100

        autocmd FileType c,h,cpp setlocal foldmethod=syntax

        " When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        " Also don't do it when the mark is in the first line, that is the default
        " position when opening a file.
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif

        " If buffer modified, update any 'Last modified: ' in the first 20 lines.
        " 'Last modified: ' can have up to 10 characters before (they are retained).
        " Restores cursor and window position using save_cursor variable.
        function! LastModified()
            if &modified
                let save_cursor = getpos(".")
                let n = min([20, line("$")])
                keepjumps exe '1,' . n . 's#^\(.\{,10}Last Modified: \).*#\1' .
                            \ strftime('%a %b %d, %Y  %I:%M%p') . '#e'
                call histdel('search', -1)
                call setpos('.', save_cursor)
            endif
        endfun

        autocmd BufWritePre * call LastModified()



    augroup end
    augroup _git
        autocmd!
        autocmd FileType gitcommit setlocal wrap
        autocmd FileType gitcommit setlocal spell
    augroup end
    augroup _markdown
        autocmd!
        autocmd FileType markdown setlocal wrap
        autocmd FileType markdown setlocal spell
    augroup end
    augroup _auto_resize
        autocmd!
        autocmd VimResized * tabdo wincmd =
    augroup end
    augroup _alpha
        autocmd!
        autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
    augroup end
]]

