.PHONY: install deploy sync

I3_CONFIG_FILEPATH=~/.i3/config
XRESOURCES_FILEPATH=~/.Xresources
BASHRC_FILEPATH=~/.bashrc

install:
	xargs -d '\n' -a packages/i3.list yay --noconfirm --needed -S

deploy:
	cp ./config/i3/config ${I3_CONFIG_FILEPATH}
	cp ./config/urxvt/.Xresources ${XRESOURCES_FILEPATH}
	cp ./config/bash/.bashrc ${BASHRC_FILEPATH}

sync:
	cp ${I3_CONFIG_FILEPATH} ./config/i3/config
	cp ${XRESOURCES_FILEPATH} ./config/urxvt/.Xresources
	cp ${BASHRC_FILEPATH} ./config/bash/.bashrc