" NERD TREE =================================================================
" launch nerd tree on startup
autocmd vimenter * NERDTree 
" Jump to the main window.
autocmd VimEnter * wincmd p
"map nerd tree to ctrl n
map <C-n> :NERDTreeToggle<CR>
nnoremap \w :bp<cr>:bd #<cr>

"ignore node modules
let g:NERDTreeIgnore = ['^node_modules$']

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()
let NERDTreeShowHidden=1
