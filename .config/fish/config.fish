# Initilal Setup
if status is-interactive
    set fish_greeting
    starship init fish | source
    fzf --fish | source
    source ~/.config/fzf/matugen-fzf.sh
    zoxide init fish | source
end

# Pokemon-colorscripts block
if not set -q VSCODE_IPC_HOOK; and test "$TERM_PROGRAM" != "vscode"; and not set -q NVIM; and not set -q TMUX
    ~/.config/fastfetch/fastfetch_pokemon.sh
end

# Abbreviations
abbr --add dotdotnum --regex '^\.\.\d+$' --function multicd
