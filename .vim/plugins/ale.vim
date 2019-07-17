Plug 'w0rp/ale'

let g:sql_type_default = 'pgsql'
" -s 2 Set space size to 2
" -f 1 lowercase functions
" -u 1 lowercase keywords
" let b:ale_sql_pgformatter_options = '-s 2 -f 1 -u 1'

let g:ale_linters_explicit = 1
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0

let g:ale_linters = {
\ 'javascript': ['eslint'],
\}
let g:ale_sql_pgformatter_options = '-s 2 -f 1 -u 1'

      " let b:ale_fix_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier', 'eslint'],
\ 'sql': ['pgformatter']
\}
