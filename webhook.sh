summary "HTTP-server to execute shell commands."
webpage "https://github.com/adnanh/webhook"
src_git "https://github.com/adnanh/webhook.git"
src_url "https://github.com/adnanh/webhook.git"
license "MIT"
require "go"

build_in_sourced

build() {
    run go build -v -trimpath -o webhook &&
    install_bins webhook
}
