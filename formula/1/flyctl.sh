package set summary "Command line tools for fly.io services"
package set webpage "https://fly.io/"
package set git.url "https://github.com/superfly/flyctl.git"
package set src.url "https://github.com/superfly/flyctl/archive/refs/tags/v0.0.283.tar.gz"
package set src.sum "e91c6e23cb2d656c8cf3b25f68e682f89e3e8fec82e3dbaf89816738c6a22b4c"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -x -trimpath -ldflags="'-s -w'" -o flyctl &&
    run install_bins flyctl
}
