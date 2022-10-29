# check if directory exists
echo   "        ▌ ▌▗      ▞▀▖   ▐
        ▚▗▘▄ ▛▚▀▖ ▚▄ ▞▀▖▜▀ ▌ ▌▛▀▖
        ▝▞ ▐ ▌▐ ▌ ▖ ▌▛▀ ▐ ▖▌ ▌▙▄▘
         ▘ ▀▘▘▝ ▘ ▝▀ ▝▀▘ ▀ ▝▀▘▌"
if [ -d /etc/vim/ ]; then
  echo "directory /etc/vim/ exist"
 else
  echo "directory /etc/vim/ not exist"
  mkdir /etc/"vim"/ 
  echo "create /etc/vim/"

fi

touch vimrc.local

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

mv vimrc.local /etc/vim/

mkdir -p ~/.vim/pack/vendor/start/
mkdir plugin

git clone https://github.com/jiangmiao/auto-pairs.git
cp -r auto-pairs plugin
rm -r auto-pairs

git clone https://github.com/vim-airline/vim-airline.git
cp -r vim-airline plugin
rm -r vim-airline

git clone https://github.com/alvan/vim-closetag.git
cp -r vim-closetag plugin
rm -r vim-closetag

git clone https://github.com/sheerun/vim-polyglot.git
cp -r vim-polyglot plugin
rm -r vim-polyglot

git clone https://github.com/preservim/nerdtree.git
cp -r nerdtree plugin
rm -r nerdtree

git clone https://github.com/vim-airline/vim-airline-themes.git
cp -r vim-airline-themes plugin
rm -r vim-airline-themes

git clone https://github.com/sickill/vim-monokai.git
cp -r vim-monokai plugin
rm -r vim-monokai

git clone https://github.com/vim-scripts/AutoComplPop.git
cp -r AutoComplPop plugin
rm -r AutoComplPop

cp -r plugin/* ~/.vim/pack/vendor/start/
rm -r plugin

echo -e "\t -------------------------
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
