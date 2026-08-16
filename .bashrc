#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Initialization
# if [[ -z "$VSCODE_IPC_HOOK" && "$TERM_PROGRAM" != "vscode" && "$NVIM" == "" ]]; then
#     # pokemon-colorscripts -r --no-title
#     clear && ~/.config/fastfetch/fastfetch_pokemon.sh
# fi

export QT_QPA_PLATFORMTHEME=kde
export XDG_MENU_PREFIX=arch-

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias neofetch='clear && fastfetch -c ~/.config/fastfetch/config_arch.jsonc'
alias pokemon='pokemon-colorscripts -r --no-title'
alias ssh-default='eval $(ssh-agent -s); ssh-add ~/.ssh/id_ed25519'
alias ssh-ufes='eval $(ssh-agent -s); ssh-add ~/.ssh/id_ed25519_ufes'
alias lockscreen='sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/sddm-astronaut-theme/'
alias tty-clock='tty-clock -s -c -b -C 4'
alias cmatrix='cmatrix -C blue -b'
alias terminal-rain='terminal-rain --rain-color blue --lightning-color white'
alias wlogout='wlogout -b 4'
alias config-hyprland='nvim ~/.config/hypr/components/'
# eval "$(starship init bash)"
PS1='[\u@\h \W]\$ '
