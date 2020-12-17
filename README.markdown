NERDTree Extension for creating React Components
=============

Introduction
------------

This plugin adds functionaly to NERDTree to give you the option to add react component folders.  


![NERDTree React Component Screenshot](https://user-images.githubusercontent.com/1413475/102446522-e8490800-4025-11eb-88a5-77c951cc6d5c.png)

Installation
------------

#### Vim 8+ packages

If you are using VIM version 8 or higher you can use its built-in package management; see `:help packages` for more information. Just run these commands in your terminal:

```bash
git clone https://github.com/whatever555/nerdtree-react-component.git ~/.vim/pack/vendor/start/nerdtree-react-component
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree-react-component/doc" -c q
```

Or you can use the following:  

#### [pathogen.vim](https://github.com/tpope/vim-pathogen)

In the terminal,
```bash
git clone https://github.com/whatever555/nerdtree-react-component.git ~/.vim/bundle/nerdtree-react-component
```
In your vimrc,
```vim
call pathogen#infect()
syntax on
filetype plugin indent on
```

Then reload vim, run `:helptags ~/.vim/bundle/nerdtree-react-component/doc/` or `:Helptags`.

#### [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
```vim
call vundle#begin()
Plugin 'whatever555/nerdtree-react-component'
call vundle#end()
```

#### [vim-plug](https://github.com/junegunn/vim-plug)
```vim
call plug#begin()
Plug 'whatever555/nerdtree-react-component'
call plug#end()
```

#### [dein.vim](https://github.com/Shougo/dein.vim)
```vim
call dein#begin()
call dein#add('whatever555/nerdtree-react-component')
call dein#end()
```

#### [apt-vim](https://github.com/egalpin/apt-vim)
```bash
apt-vim install -y https://github.com/whatever555/nerdtree-react-component.git
```


