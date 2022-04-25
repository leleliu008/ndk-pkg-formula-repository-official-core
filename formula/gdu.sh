pkg_set summary "Disk usage analyzer with console interface written in Go"
pkg_set git.url "https://github.com/dundee/gdu.git"
pkg_set src.url "https://github.com/dundee/gdu/archive/v5.13.2.tar.gz"
pkg_set src.sha "f4f237f6da470599f6393591282cfd67922a963325859a939ca40ba7e18024a8"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow \
        -X github.com/dundee/gdu/v5/build.Version=v$PACKAGE_VERSION \
        -X github.com/dundee/gdu/v5/build.Time=$TIMESTAMP_UNIX \
        ./cmd/gdu
}
