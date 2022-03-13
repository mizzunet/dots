## My configuration files

<img src="/.screenshots/proximanova.png" alt="Linux" />

* WM: `sway`

* Bar: `waybar`

* Notification: `mako`

* Terminal: `alacritty`

* Fonts: [Materials Design Icons](https://materialdesignicons.com/), [Proxima Nova](https://aur.archlinux.org/packages/ttf-clear-sans/)

### Setup
Clone this 
```
git clone git@github.com:mizzunet/dots.git .dots
```
Backup your configs first!!
```
ln -s ~/.dots/fish  ~/.config/
ln -s ~/.dots/sway  ~/.config/
ln -s ~/.dots/alacritty  ~/.config/
ln -s ~/.dots/mako  ~/.config/
ln -s ~/.dots/nvim  ~/.config/
ln -s ~/.dots/nvim  ~/.config/
ln -s ~/.dots/mako  ~/.config/
ln -s ~/.dots/yay  ~/.config/
ln -s ~/.dots/swappy ~/.config/
ln -s ~/.dots/mpv/mpv.conf  ~/.config/mpv/

ln -s ~/.dots/scripts ~/.scripts

ln -s ~/.dots/fonts ~/.local/share/
ln -s ~/.dots/config/starship.toml ~/.config/
ln -s ~/.dots/config/modprobed-db.conf ~/.config/
ln -s ~/.dots/config/modprobed.db  ~/.config/

ln -s ~/.dots/fonts/ /.local/share/
```
