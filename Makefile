.PHONY: i3

stow = cd config && stow --adopt -v -t ~

install:
	xargs -d '\n' -a package.list pacman --noconfirm --needed -S

i3:
	$(stow) .i3
	$(stow) rofi
	$(stow) urxvt
	$(stow) code
	$(stow) polybar
	xrdb ~/.Xresources