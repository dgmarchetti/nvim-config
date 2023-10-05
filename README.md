# My personal configuration for Neovim
It pretends be a guide to install and configure nvim , in order to help me and 
anybody to work at shorter time with nvim and a few tools as an IDE for 
development.

## Install [**Neovim**](https://neovim.io/)
Follow the method that you prefer, and install Neovim. For more info see [Neovim](https://github.com/neovim/neovim) 
repo or this [wiki](https://github.com/neovim/neovim/wiki/Installing-Neovim) on Github.

## Basic Configuration
Neovim configuration is at  `~/.config/nvim/init.vim`. You can create this file
if not exists:
``````
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
``````
Open `init.vim` and add some basic configurations:
```
set number
syntax enable
```
Or you can load a file like [this](./basic-config.vim) that contains basic configurations and allow
you to be more organized:
``````
so ~/.config/nvim/basic-config.vim
``````
## Plugins
### Create the directory for Neovim plugins:
If you don't already have a directory for Neovim plugins, you can create one. 
Neovim generally uses ``~/.config/nvim`` as the configuration directory. Inside 
this directory, create the autoload folder if it does not exist:
```
mkdir -p ~/.config/nvim/autoload
``````
### Download Vim-Plug:
Use ``curl`` or ``wget`` to download the ``plug.vim`` file, which is the Vim-Plug file:
```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Or
```
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -P ~/.config/nvim/autoload/
```
### Add Vim-Plug to your Neovim configuration file:
Open your Neovim configuration file, which is usually ``~/.config/nvim/init.vim``. 
Add the following lines to the beginning or end of the file to enable Vim-Plug:
```
call plug#begin('~/.config/nvim/plugged')
" Lista de plugins
call plug#end()
```
You can add your preferred plugins in the “Plugin List” section. For example:
```
call plug#begin('~/.config/nvim/plugged')
" Plugins
Plug 'nombre_autor/nombre_plugin'
Plug 'otro_autor/otro_plugin'
" Más plugins...
call plug#end()
```
Or you can use a file like [this](./plugins-installation.vim) to put this content and load it as:
```
so ./plugins-installation.vim
```
### Install the plugins with Vim-Plug:
Open Neovim and run ``:PlugInstall``. This will download and install the plugins 
you have specified in your configuration file.

### Reload Neovim setup:
Once the plugins have been installed, make sure to reload the Neovim configuration 
with ``:source ~/.config/nvim/init.vim`` or by restarting Neovim.

You should now have Vim-Plug installed and running in Neovim, allowing you 
to manage and use plugins effectively. You can add or remove plugins in your 
Neovim configuration file and then run ``:PlugInstall`` to update your plugins.

### Install [CoC (Conquer of Completion)](https://github.com/neoclide/coc.nvim)
Install CoC plugins by the following commands extracted from this [automation script](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#automation-script):
```
mkdir -p ~/.local/share/nvim/site/pack/coc/start
cd ~/.local/share/nvim/site/pack/coc/start
curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz | tar xzfv -

# Install extensions
mkdir -p ~/.config/coc/extensions
cd ~/.config/coc/extensions
if [ ! -f package.json ]
then
  echo '{"dependencies":{}}'> package.json
fi
# Change extension names to the extensions you need
npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
```
See the [requirements](https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#requirements) for CoC.

### Install other dependencies

```
# Install nvim module for Python
python3 -m pip install --user --upgrade pynvim

# Install neovim npm package.
npm install -g neovim

```

