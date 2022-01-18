package set summary "Powerful, enterprise-ready, open source web server with automatic HTTPS"
package set webpage "https://caddyserver.com/"
package set git.url "https://github.com/caddyserver/caddy.git"
package set src.url "https://github.com/caddyserver/caddy/archive/v2.4.6.tar.gz"
package set src.sum "5a450a4ff0d2dbd165d62f957ecdaebdc4bd0445c66a06a27d0025a82843402d"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o caddy ./cmd/caddy &&
    run install_bins caddy
}
