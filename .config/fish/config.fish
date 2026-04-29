if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="eza -a --icons"

starship init fish | source
set -g fish_greeting
