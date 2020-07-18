# nvim

My Javascript / Typescript / Angular based configuration for neovim.
Works on ubuntu and manjaro. I usually run neovim within tmux.

![Example](https://github.com/ticklepoke/nvim/blob/master/demo1.gif)

# Usage

1. Get yourself a copy of [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim).

2. And install [vim-plug](https://github.com/junegunn/vim-plug#installation)

3. Clone this repo into `~/.config/nvim`

```
cd ~/.config && git clone https://github.com/ticklepoke/nvim.git
```

4. In order to initialize the files, you need to source them. However, the current vim config files are setting various plugging settings even though you have not installed them.
   This is kind of a catch-22. One way around is to first comment out the plugin configs in `init.vim`, source the file, and then uncomment the plugin configs.

   - Comment out the following in `init.vim`:

   ```
   ....

   call plug#end()

   source ~/.config/nvim/general.vim
   "source ~/.config/nvim/keybindings.vim <-- comment all these out
   "source ~/.config/nvim/coc.vim
   "source ~/.config/nvim/nerdtree.vim
   "source ~/.config/nvim/nerdcommenter.vim
   "source ~/.config/nvim/airline.vim
   "source ~/.config/nvim/fzf.vim
   "source ~/.config/nvim/vimrooter.vim <-- until here
   ```

   - Save the `init.vim` file (note, any code block with a preceding `:` is meant to be ran from within the nvim editor):

   ```
   :w
   ```

- Within the vim editor, source the `init.vim` file:

  ```
  :so %
  ```

- Uncomment the sources from the first step, save the `init.vim` file again and source it:

  ```
  ....

  call plug#end()

  source ~/.config/nvim/general.vim
  source ~/.config/nvim/keybindings.vim <-- uncomment all these out
  source ~/.config/nvim/coc.vim
  source ~/.config/nvim/nerdtree.vim
  source ~/.config/nvim/nerdcommenter.vim
  source ~/.config/nvim/airline.vim
  source ~/.config/nvim/fzf.vim
  source ~/.config/nvim/vimrooter.vim <-- until here
  ```

  then

  ```
  :w
  ```

  and

  ```
  :so %
  ```

- Finally, install the plugins:

  ```
  :PlugInstall
  ```

## Code Completion

Code completion is mostly handled by [coc](https://github.com/neoclide/coc.nvim).

    ```
    :CocInstall coc-angular coc-css coc-git coc-html coc-json coc-markdownlint coc-pairs coc-prettier coc-sh coc-snippets coc-tsserver
    ```

## Key Mappings

### General

- Resize: `alt - h / j / k / l`

### Buffer

- Change buffer: `tab / shift-tab`
- Close buffer: `\-w`
- List buffers: `\-b`

### Code Editing

- Trigger suggestions: `ctrl-space`
- Go to definition: `F12`
- Show documentation: `K`

### Files

- Toggle nerdtree: `Ctrl-n`
- Find file: `Ctrl-p`
- Find text: `Ctrl-f`

### Git

- Git status: `\gs`
- Git stage: `s` apply on specific files within git status menu
- Git unstage: `u` apply on specific files within git status menu
- Git commit: `cc` apply on staged files
- Git push: `-` apply on commit lines
