package set summary "Terminal file manager"
package set git.url "https://godoc.org/github.com/gokcehan/lf.git"
package set src.url "https://github.com/gokcehan/lf/archive/r26.tar.gz"
package set src.sum "dccd1ad67d2639e47fe0cbc93d74f202d6d6f0c3759fb0237affb7b1a2b1379e"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w -X main.gVersion=$PACKAGE_VERSION'" -o lf &&
    run install_bins lf &&
    run install_mans lf.1
}
