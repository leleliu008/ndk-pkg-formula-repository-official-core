pkg_set summary "Disk usage analyzer with console interface written in Go"
pkg_set git.url "https://github.com/dundee/gdu.git"
pkg_set src.url "https://github.com/dundee/gdu/archive/v5.14.0.tar.gz"
pkg_set src.sha "6fb64500eb22a4e586322c065e97bed72b6f4e1aead4311dad50b75d11222cdb"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X github.com/dundee/gdu/v5/build.Version=v$PACKAGE_VERSION \
        -X github.com/dundee/gdu/v5/build.Time=$TIMESTAMP_UNIX \
        ./cmd/gdu
}
