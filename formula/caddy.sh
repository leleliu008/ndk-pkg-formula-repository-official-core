pkg_set summary "Powerful, enterprise-ready, open source web server with automatic HTTPS"
pkg_set webpage "https://caddyserver.com/"
pkg_set git.url "https://github.com/caddyserver/caddy.git"
pkg_set src.url "https://github.com/caddyserver/caddy/archive/v2.5.1.tar.gz"
pkg_set src.sha "841f5524e2e107bff278b604c544843564a4a1ef0c3803eeae588e79e4ea5d06"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow ./cmd/caddy
}
