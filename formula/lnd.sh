package set summary "Lightning Network Daemon"
package set webpage "http://dev.lightning.community/"
package set git.url "https://github.com/lightningnetwork/lnd.git"
package set version "0.14.1-beta"
package set src.url "https://github.com/lightningnetwork/lnd/archive/refs/tags/v$PACKAGE_VERSION.tar.gz"
package set src.sum "79f217376e6046bea59e1e80562a637b5e51a1e78e9f07c6a77e737ad112ab90"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags linux -X github.com/lightningnetwork/lnd/build.Commit=v$PACKAGE_VERSION ./cmd/lnd &&
    gow -tags linux -X github.com/lightningnetwork/lnd/build.Commit=v$PACKAGE_VERSION ./cmd/lncli
}
