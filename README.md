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
If input method not working in onlyoffice, try to add these lines to the bottom of `/usr/bin/onlyoffice-desktopeditors`
```
GTK_IM_MODULE="fcitx"
QT_IM_MODULE="fcitx"
XMODIFIERS="@im=fcitx"
```

> todo:<br>
> - [ ] informations of apps
> - [ ] dependencies
