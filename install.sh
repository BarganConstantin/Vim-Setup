# check if directory exists
if [ -d /etc/vim/ ]; then
  echo "directory /etc/vim/ exist"
 else
  echo "directory /etc/vim/ not exist"
  mkdir /etc/"vim"/ 
  echo "create /etc/vim/"

fi

touch vimrc.local

echo set number >> vimrc.local
echo colo monokai >> vimrc.local
echo set tabstop=4 >> vimrc.local
echo set shiftwidth=4 >> vimrc.local
echo set softtabstop=4 >> vimrc.local
echo set expandtab >> vimrc.local
echo filetype plugin indent on >> vimrc.local
echo set autoindent >> vimrc.local
echo set laststatus=2 >> vimrc.local
echo let g:airline#extensions#tabline#enabled = 1 >> vimrc.local
echo let g:airline_theme='base16_greenscreen' >> vimrc.local

mv vimrc.local /etc/vim/

mkdir -p /pack/vendor/start/plugin

git clone https://github.com/jiangmiao/auto-pairs.git

mv auto-pairs /pack/vendor/start/plugin/

# git clone https://github.com/vim-airline/vim-airline.git

# mv vim-airline /pack/vendor/start/plugin/

# git clone https://github.com/alvan/vim-closetag.git

# mv vim-closetag /pack/vendor/start/plugin/

# git clone https://github.com/sheerun/vim-polyglot.git

# mv vim-polyglot /pack/vendor/start/plugin/

# git clone https://github.com/preservim/nerdtree.git

# mv nerdtree /pack/vendor/start/plugin/

# git clone https://github.com/vim-airline/vim-airline-themes.git

# mv vim-airline-themes /pack/vendor/start/plugin/

# git clone https://github.com/sickill/vim-monokai.git

# mv vim-monokai /pack/vendor/start/plugin/

# git clone https://github.com/vim-scripts/AutoComplPop.git

# mv AutoComplPop /pack/vendor/start/plugin/

mv pack /.vim/

