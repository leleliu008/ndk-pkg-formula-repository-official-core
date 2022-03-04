package set summary "Open source continuous file synchronization application"
package set webpage "https://syncthing.net/"
package set git.url "https://github.com/syncthing/syncthing.git"
package set src.url "https://github.com/syncthing/syncthing/archive/v1.19.1.tar.gz"
package set src.sum "46319031c0805374baa382ee2b21290fb9dc595b70e905b97eb9a5643a78edc4"
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
