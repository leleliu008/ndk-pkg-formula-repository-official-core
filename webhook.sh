summary "HTTP-server to execute shell commands."
src_git "https://github.com/adnanh/webhook.git"
license "MIT"
bsystem "go"

build_in_sourced

build() {
    run go build -v -trimpath -o webhook &&
    run install_bins webhook
}
