package set summary "Swiss army knife for Debian repository management"
package set webpage "https://www.aptly.info/"
package set git.url "https://github.com/aptly-dev/aptly.git"
package set src.url "https://github.com/aptly-dev/aptly/archive/v1.4.0.tar.gz"
package set src.sum "4172d54613139f6c34d5a17396adc9675d7ed002e517db8381731d105351fbe5"
package set license "MIT"
package set bsystem "go"

prepare() {
    run go mod init aptly
	run go mod tidy
    run go mod vendor
}

build() {
    gow -X main.Version=$PACKAGE_VERSION &&
    run install_mans $SOURCE_DIR/man/aptly.1
}
