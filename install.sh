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
echo let g:airline_theme="'base16_greenscreen'" >> vimrc.local

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
