# 🛠️ Vim-Setup

This repository contains my setup for the Vim text editor. It includes my `vimrc` configuration file and a list of plugins that I use.

![screenshot from vim](https://github.com/kostea123/vim_setup/blob/main/1.png)

## 📝 Plugin Setup

To set up the plugins, first navigate to the Vim configuration directory by running `cd /etc/vim/`. Then, open the `vimrc` file and add the following lines:

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

## 🔌 Plugin Installation

To install the plugins, navigate to the Vim plugin directory by running `cd ~/.vim/pack/vendor/start`. Then, run the following commands to clone the repositories for each plugin:

- **auto-pairs**:

```
git clone https://github.com/jiangmiao/auto-pairs.git
```

- **vim-airline**:

```
git clone https://github.com/vim-airline/vim-airline.git
```

- **vim-closetag**:

```
git clone https://github.com/alvan/vim-closetag.git
```

- **vim-polyglot**:

```
git clone https://github.com/sheerun/vim-polyglot.git
```

- **nerdtree**:

```
git clone https://github.com/preservim/nerdtree.git
```

- **vim-airline-themes**:

```
git clone https://github.com/vim-airline/vim-airline-themes.git
```

- **vim-monokai**:

```
git clone https://github.com/sickill/vim-monokai.git
```

- **AutoComplPop**:

```
git clone https://github.com/vim-scripts/AutoComplPop.git
```

## 🖥️ tmux Setup

To set up tmux, open the `~/.tmux.conf` file and add the following lines:

```
set-option -g prefix C-q
set -g mouse on
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D
```

This will configure tmux with a custom prefix key and enable mouse support. It will also bind the arrow keys to switch between panes.

I hope this helps you set up Vim and tmux on your machine. If you have any questions or feedback, feel free to reach out to me.
