# check if directory exists
echo   "        ▌ ▌▗      ▞▀▖   ▐
        ▚▗▘▄ ▛▚▀▖ ▚▄ ▞▀▖▜▀ ▌ ▌▛▀▖
        ▝▞ ▐ ▌▐ ▌ ▖ ▌▛▀ ▐ ▖▌ ▌▙▄▘
         ▘ ▀▘▘▝ ▘ ▝▀ ▝▀▘ ▀ ▝▀▘▌"
if [ -d /etc/vim/ ]
 then
  echo "directory /etc/vim/ exist"
 else
  echo "directory /etc/vim/ not exist"
  mkdir /etc/"vim"/ 
  echo "create /etc/vim/"

fi

touch vimrc

echo set number >> vimrc
echo colo monokai >> vimrc
echo set tabstop=4 >> vimrc
echo set shiftwidth=4 >> vimrc
echo set softtabstop=4 >> vimrc
echo set expandtab >> vimrc
echo filetype plugin indent on >> vimrc
echo set autoindent >> vimrc
echo set laststatus=2 >> vimrc
echo let g:airline#extensions#tabline#enabled = 1 >> vimrc
echo let g:airline_theme="'base16_greenscreen'" >> vimrc

mv vimrc /etc/vim/

home=$( echo $PWD | cut -d'/' -f -3 )
path_plugin="${home}/.vim/pack/vendor/start"
echo $path_plugin


if [ -d $path_plugin ]
  then
  echo "directory for plugin exist"
  else
  echo "directory for plugin not exist, try to create"
  mkdir -p $path_plugin
  if [ -d $path_plugin ]
  then
      echo "directory for plugin created"
  else
      echo "Error: directory for plugin not created"
      exit 1
  fi
fi

git clone https://github.com/jiangmiao/auto-pairs.git
cp -r auto-pairs $path_plugin
rm -r auto-pairs

git clone https://github.com/vim-airline/vim-airline.git
cp -r vim-airline $path_plugin
rm -r vim-airline

git clone https://github.com/alvan/vim-closetag.git
cp -r vim-closetag $path_plugin
rm -r vim-closetag

git clone https://github.com/sheerun/vim-polyglot.git
cp -r vim-polyglot $path_plugin
rm -r vim-polyglot

git clone https://github.com/preservim/nerdtree.git
cp -r nerdtree $path_plugin
rm -r nerdtree

git clone https://github.com/vim-airline/vim-airline-themes.git
cp -r vim-airline-themes $path_plugin
rm -r vim-airline-themes

git clone https://github.com/sickill/vim-monokai.git
cp -r vim-monokai $path_plugin
rm -r vim-monokai

git clone https://github.com/vim-scripts/AutoComplPop.git
cp -r AutoComplPop $path_plugin
rm -r AutoComplPop

printf "\n\t -------------------------
\t/     Congratulation!     \\
\t|                         |
\t\\ Your Vim is wonderfull! /
\t -------------------------
\t        \   ^__^
\t         \  (oo)\_______
\t            (__)\       )\/\\
\t                ||----w |
\t                ||     ||
\t"

printf "\n    https://github.com/BarganConstantin/Vim-Setup/\n\n"

rm -- $0
