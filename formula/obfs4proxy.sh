pkg_set summary "Pluggable transport proxy for Tor, implementing obfs4"
pkg_set git.url "https://gitlab.com/yawning/obfs4.git"
pkg_set src.url "https://gitlab.com/yawning/obfs4/-/archive/obfs4proxy-0.0.13/obfs4-obfs4proxy-0.0.13.tar.gz"
pkg_set src.sha "ddd9291cb7c41326f076f622118816f09148e1aac79ec440d46436e802918e84"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "go"

build() {
    gow ./obfs4proxy
}
