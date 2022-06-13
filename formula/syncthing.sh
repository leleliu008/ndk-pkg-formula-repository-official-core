pkg_set summary "Open source continuous file synchronization application"
pkg_set webpage "https://syncthing.net/"
pkg_set git.url "https://github.com/syncthing/syncthing.git"
pkg_set src.url "https://github.com/syncthing/syncthing/archive/v1.20.2.tar.gz"
pkg_set src.sha "6733ae6947497ace959c56f7c491b785ec058c8592cfd9824bc37125d1f342d9"
pkg_set license "MPL-2.0"
pkg_set bsystem "go"

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
