# Create a new directory and enter it
function mkcd() {
	mkdir -p "$@" && cd "$_";
}
function ecb() {
    echo "$@" | pbcopy;
}
function ccb() {
    cat "$@" | pbcopy;
}
