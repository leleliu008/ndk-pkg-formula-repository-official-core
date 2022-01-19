package set summary "a go-lang supervisor implementation"
package set git.url "https://github.com/ochinchina/supervisord.git"
package set src.url "https://github.com/ochinchina/supervisord/archive/refs/tags/v0.7.3.tar.gz"
package set src.sum "8ee6f3eb288149fc8b66fea6831149c50ac36a38c8742c28ffbacdd54d10e970"
package set bsystem "go"

prepare() {
    # https://github.com/ochinchina/supervisord/issues/269 
    sed_in_place '1d' assets_dev.go
}

build() {
    gow -tags release
}
