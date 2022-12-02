## Willowbit's Dots

A collection of configurations & things from my laptop, including a script for switching between themes. I've included the few that I mainly use (Nord, Everforest, Gruvbox,) but this mainly serves as a template for configuration organization.

### Usage

Any way you'd like! I organize my configs through my themeswap script.

#### Themeswap

TODO:
- [ ] Spicetify
- [ ] BetterDiscord
- [ ] Obsidian
- [ ] Easier Dark / Light theme support

A script that allows you to organize all of your themed configs in one place. Themed configs are placed in a folder together titled [theme]-[application]. Applications are defined in applications.yml which includes the app name, where the themed config file should be put, and any commands/scripts that should be run to apply the theme to that certain application. The script is run with the theme as an argument, like `themeswap.py gruvbox` or something.

My file structure looks like this:

- themeswap
	- configs
		- nord-gtk
		- nord-polybar
		- nord-vscode
		- nord-wallpaper
	- applications.yml
	- themeswap.py

You can change the directory it looks into within themeswap.py, or as an argument after like `themeswap.py nord ~/my-dir/`

If you improve this script, let me know on discord willa#6763 / make a pull request!

### Themes

- Everforest
	- [Alacritty](https://gist.github.com/sainnhe/6432f83181c4520ea87b5211fed27950)
	- [GTK](https://www.gnome-look.org/p/1695467/)
	- [VSCode](https://github.com/sainnhe/everforest-vscode)
- Gruvbox
	- [Alacritty](https://gist.github.com/kamek-pf/2eae4f570061a97788a8a9ca4c893797)
	- [GTK](https://www.gnome-look.org/p/1681313/)
	- [VSCode](https://github.com/sainnhe/gruvbox-material-vscode)
- Nord
	- [Alacritty](https://github.com/arcticicestudio/nord-alacritty)
	- [GTK](https://github.com/EliverLara/Nordic)
	- [VSCode](https://www.nordtheme.com/ports/visual-studio-code)

### Stuff I Used

WM: [i3wm](https://i3wm.org/)  
Compositor: [dccsillag/picom](https://github.com/dccsillag/picom)  
Bar: [Polybar](https://github.com/polybar/polybar) + [Nerdfonts](https://www.nerdfonts.com/) (for rounded borders)  
Terminal: [Alacritty](https://github.com/alacritty/alacritty)
	Font: [Hack](https://github.com/source-foundry/Hack)
MD Editor: [Obsidian](https://obsidian.md/)
File Browser: Nautilus*  
Application Launcher: [rofi](https://github.com/davatorium/rofi) with [adi1090x's themes](https://github.com/adi1090x/rofi) + some tweaks
Shell Prompt: My own custom one, you can find it in bashrc

*Note for GTK apps: I used xsettingsd to reload the GTK themes. Make sure xsettingsd is installed and running on startup. I put all GTK themes in ~/.themes, YMMV.

