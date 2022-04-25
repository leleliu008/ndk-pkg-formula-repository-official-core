pkg_set summary "Lightning Network Daemon"
pkg_set webpage "http://dev.lightning.community/"
pkg_set git.url "https://github.com/lightningnetwork/lnd.git"
pkg_set version "0.14.1-beta"
pkg_set src.url "https://github.com/lightningnetwork/lnd/archive/refs/tags/v$PACKAGE_VERSION.tar.gz"
pkg_set src.sha "79f217376e6046bea59e1e80562a637b5e51a1e78e9f07c6a77e737ad112ab90"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -tags linux -X github.com/lightningnetwork/lnd/build.Commit=v$PACKAGE_VERSION ./cmd/lnd &&
    gow -tags linux -X github.com/lightningnetwork/lnd/build.Commit=v$PACKAGE_VERSION ./cmd/lncli
}
