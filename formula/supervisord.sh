pkg_set summary "a go-lang supervisor implementation"
pkg_set git.url "https://github.com/ochinchina/supervisord.git"
pkg_set src.url "https://github.com/ochinchina/supervisord/archive/refs/tags/v0.7.3.tar.gz"
pkg_set src.sha "8ee6f3eb288149fc8b66fea6831149c50ac36a38c8742c28ffbacdd54d10e970"
pkg_set license "MIT"
pkg_set bsystem "go"

prepare() {
    # https://github.com/ochinchina/supervisord/issues/269 
    sed_in_place '1d' assets_dev.go
}

build() {
    gow -tags release
}
