# vimrc

This is the vim configuration that I use for C++, Go, Java, Lua/Moonscript and Python development.
While the total amount of plugins is not to big, the existing ones really manage to turn Vim into a Beast. And still, if the features are overwealming,
just run `:Goyo` and you are in the lightweight mode.

My favorite part of this config is `ale`, which is an async linter that checks your code on the fly (It is fast). There's also stuff like Googes `codefmt` and `gitgutter`, which really help increasing my development speed.

## Installing

The installment is not hard at all.
Assuming that you use a *POSIX* compliant shell:
You start by downloading or **cloning** this repository and move the files into your home directory.

`cp .vimrc ~/.vimrc`
and then
`cp -r .vim ~/.vim`

You will also have to get the Vundle Plugin Manager by running
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Then, fire up vim and run `:PluginInstall`, to let **Vundle** to the rest for you. After this completed, you just have to do one thing more: Head into `~/.vim/bundle/YouCompleteMe` and run `python3 install.py`. If you want *YouCompleteMe* to support Java, Go, C#, etc, check out the *YouCompleteInstallation Guide*.

