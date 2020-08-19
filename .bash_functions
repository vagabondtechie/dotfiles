# Create a new directory and enter it
function mkcd() {
	mkdir -p "$@" && cd "$_";
}
function cb() {
    cat "$1" | pbcopy;
}
