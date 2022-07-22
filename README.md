# vimrc

## Installing  
The installment is not hard at all.
Assuming that you use a *POSIX* compliant shell:
You start by downloading or **cloning** this repository and move the file into your home directory.

`cp .vimrc ~/.vimrc`

After the installation, you need to install `vim-plug` by running the following command.  
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`  

Then open vim and install the plugins with `:PlugInstall`.  
Please be sure that you have `NodeJS` and `Yarn` installed.

## Easy Installation
Run `make install` to do it automatically.


## FAQ

### NERDTree/File Explorer does not show the icons
It's because you don't have a [Nerd Font](https://www.nerdfonts.com/font-downloads) installed. After installation, adjust the `.vimrc` and reload the configuration through `:source ~/.vimrc`.  

If it still doesn't work, see if you can specify a font in your terminal. If so, select the Nerd Font there.
