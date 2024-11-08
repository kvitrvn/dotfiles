.PHONY: i3

stow = cd config && stow --adopt -v -t ~

i3:
	$(stow) .i3
	$(stow) rofi
	$(stow) urxvt
	$(stow) code
	xrdb ~/.Xresources