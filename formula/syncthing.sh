package set summary "Open source continuous file synchronization application"
package set webpage "https://syncthing.net/"
package set git.url "https://github.com/syncthing/syncthing.git"
package set src.url "https://github.com/syncthing/syncthing/archive/v1.19.2.tar.gz"
package set src.sum "81be2d3b22fa7282eee9cc1dc7569975fa62e7149700dcedaf03d372fb012a1e"
package set license "MPL-2.0"
package set bsystem "go"

prepare() {
    run go build build.go
}

build() {
    _GOARCH=$GOARCH

    unset GOOS
    unset GOARCH

    run rm -f syncthing &&
    run ./build -goos android -goarch $_GOARCH -version v$PACKAGE_VERSION build &&
    run install_bins syncthing &&
    run install_mans man/*.1 man/*.5 man/*.7
}
