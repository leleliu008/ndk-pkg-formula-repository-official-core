pkg_set summary "Swiss army knife for Debian repository management"
pkg_set webpage "https://www.aptly.info/"
pkg_set git.url "https://github.com/aptly-dev/aptly.git"
pkg_set src.url "https://github.com/aptly-dev/aptly/archive/v1.4.0.tar.gz"
pkg_set src.sha "4172d54613139f6c34d5a17396adc9675d7ed002e517db8381731d105351fbe5"
pkg_set license "MIT"
pkg_set bsystem "go"

prepare() {
    run go mod init aptly
	run go mod tidy
    run go mod vendor
}

build() {
    gow -X main.Version=$PACKAGE_VERSION &&
    run install_mans $PACKAGE_BSCRIPT_DIR/man/aptly.1
}
