package set summary "HTTP-server to execute shell commands."
package set src.git "https://github.com/adnanh/webhook.git"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o webhook &&
    run install_bins webhook
}
