# Create a new directory and enter it
function mkcd() {
	mkdir -p "$@" && cd "$_";
}
function e() {
    [ -f "$@" ] && cat "$@" | pbcopy || echo "$@" | pbcopy
}
