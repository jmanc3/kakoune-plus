
kakoune() {
    if [[ -n "$TMUX" ]]; then
        command kak "$@"
    else
        local session_name="kak-$(date +%s%N)"
        tmux new-session -s "$session_name" "kak \"$@\""
    fi
}

alias kak='kakoune'

