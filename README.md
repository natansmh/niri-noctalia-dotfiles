# Fedora Setup Guide (niri+noctalia-shell)

Based on the Sway spin, so install it and then follow this steps

## DNF

Update system:
```bash
dnf update
```

Add Terra repo and install `terra-release`:
```bash
dnf install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release
```

Install Noctalia Shell:
```bash
dnf install noctalia-shell
```

Install main packages and remove things we ain't using from Sway:
```bash
dnf install niri nautilus gnome-software kitty git vim kvantum fastfetch sddm qt6-qtsvg qt6-qtvirtualkeyboard qt6-qtmultimed nwg-look fish starship jetbrains-mono-fonts eza seahorse gcr xdg-desktop-portal xdg-desktop-portal-wlr xdg-desktop-portal-gtk

dnf remove sway waybar swaybg swaylock swayidle alacritty foot
```

---

## Noctalia

Major configs already on .config/noctalia

- Monochrome theme is a good call

___

## SDDM

Install a greeter:

- Options on: https://github.com/topics/sddm-theme
- SilentSDDM is a good one: https://github.com/uiriansan/SilentSDDM

Get and configure wallpapers
To change it just switch the default.png on `/usr/share/sddm/themes/silent/background`

___

## Flatpaks

Add Flathub repository:
```bash
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

- Use gnome-software to manage

___

## Software installation

- Install **Zed** using its official install script
- Install **Zen Browser** via official `.tar` archive or flatpak

___

## Troubleshooting

If `gnome-keyring` is not working, enable it:
```bash
systemctl --user enable --now gnome-keyring-daemon
```
