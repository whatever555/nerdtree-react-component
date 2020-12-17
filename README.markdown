NERDTree Extension for creating React Components
=============

Introduction
------------

This plugin adds functionaly to NERDTree to give you the option to add react component folders.  


![NERDTree React Component Screenshot](https://user-images.githubusercontent.com/1413475/102447066-2135ac80-4027-11eb-8d85-a6332a12b710.png)

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


Usage
------------

In the NERDTree explorer type `m` to open the menu. You should see a new option added to the list for adding a react component folder. Type `t` and enter your react component's name. There should now be a new directory created for your component including a `__tests__`, `__mocks__` and `__stories__` sub folders.


Help
------------

`:help NERDTreeReactComponent`
