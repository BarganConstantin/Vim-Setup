# vim_setup
![screenshot from vim](https://github.com/kostea123/vim_setup/blob/main/1.png)
## plugin setup ```cd /etc/vim/``` in ```vim.local```
```
set number

colo monokai

set tabstop=4
 
set shiftwidth=4
set softtabstop=4
set expandtab
 
filetype plugin indent on
 
set autoindent
 
set laststatus=2

let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='base16_greenscreen'
```

## plugin install in ```$ cd ~/.vim/pack/vendor/start```

- auto-pairs: 
```
git clone https://github.com/jiangmiao/auto-pairs.git
```

- vim-airline:
```
git clone https://github.com/vim-airline/vim-airline.git
```

- vim-closetag: 
```
git clone https://github.com/alvan/vim-closetag.git
```

- vim-polyglot:
```
git clone https://github.com/sheerun/vim-polyglot.git
```

- nerdtree:    
```
git clone https://github.com/preservim/nerdtree.git
```

- vim-airline-themes:  
```
git clone https://github.com/vim-airline/vim-airline-themes.git
```

- vim-monokai:
```
git clone https://github.com/sickill/vim-monokai.git
```

- AutoComplPop:
```
git clone https://github.com/vim-scripts/AutoComplPop.git
```

## tmux setup ```cd ~/.tmux.conf```
```
set-option -g prefix C-q

set -g mouse on

bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D
```
