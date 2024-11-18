# dotfiles

My dotfiles managed by chezmoi.

## Applications

- Wezterm
- Zsh
- Oh My Posh
- lsd(LSDeluxe)
- [mdcat](https://github.com/swsnr/mdcat)
- [viu](https://github.com/atanunq/viu)
- Vim
- wl-clipboard(if using wayland)
- Yazi
- [spotify_player](https://github.com/aome510/spotify-player)
    * [librespot-auth](https://github.com/dspearson/librespot-auth)
- bottom
- [nb](https://xwmx.github.io/nb/)
- Brave Browser
- aria2
    * imFile
    * aria2 Explorer
- FileCentipede
- Resilio sync
- ~~stashapp~~
- git-delta
- onlyoffice

## Fonts
- Blex Mono Nerd Font
- IBM Plex Sans TC
- CaskaydiaCove Nerd Font Mono
- Noto Sans CJK

## Note
- If input method not working in onlyoffice, copy the `/usr/share/applications/onlyoffice-desktopeditors.desktop` to `~/.local/share/applications/`, and add this line to desktop entry:<br> 
```
GTK_IM_MODULE="fcitx"
QT_IM_MODULE="fcitx"
XMODIFIERS="@im=fcitx"
```
- If fcitx not working in some chromium browser, copy the `.desktop` file from `/usr/share/applications/` to `~/.local/share/applications/`, and add this to desktop entry:<br>
```
--enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime
```

> todo:<br>
> - [ ] informations of apps
> - [ ] dependencies
