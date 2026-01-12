#!/bin/sh

config_file="$HOME/.config/rofi/itemSelectorConfig.rasi"

# Menu de ações com rofi
options=(
    "Home Switch"
    "NixOS Rebuild"
    "Nix Collect Garbage" 
    "Install Package Home"
    "Install Package Rebuild"
    "Install Package Home User"
    "Install Package Rebuild User"
)

abrir() {
    titulo="$1"
    shift
    kitty --title "$titulo" --class="floatingTerminal" -e "$@"
}

# Mostra o menu rofi com o título "Actions"
selected=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -p "Actions" -config "$config_file")

case $selected in
    "Home Switch")
        abrir "Home Switch" bash -c 'cd ~/.dotfiles && make home' ;;

    "NixOS Rebuild")
        abrir "NixOS Switch" bash -c 'cd ~/.dotfiles && make rebuild' ;;

    "Nix Collect Garbage")
        abrir "Nix Garbage Collect" nix-gc ;;

    "Install Package Home")
        abrir "Install Package Home" bash -c 'cd ~/.dotfiles/common/home-manager/ && nvim packages.nix';;

    "Install Package Rebuild")
        abrir "Install Package Rebuild" bash -c 'cd ~/.dotfiles/common/nixos/ && nvim packages.nix';;

    "Install Package Home User")
        abrir "Install Package Home User" bash -c "cd ~/.dotfiles/$(whoami)/home-manager/ && nvim packages.nix";;

    "Install Package Rebuild User")
        abrir "Install Package Rebuild User" bash -c "cd ~/.dotfiles/$(whoami)/nixos/ && nvim packages.nix";;

    *)
        exit 0 ;;
esac
