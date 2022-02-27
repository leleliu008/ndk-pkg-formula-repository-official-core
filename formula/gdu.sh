package set summary "Disk usage analyzer with console interface written in Go"
package set git.url "https://github.com/dundee/gdu.git"
package set src.url "https://github.com/dundee/gdu/archive/v5.13.2.tar.gz"
package set src.sum "f4f237f6da470599f6393591282cfd67922a963325859a939ca40ba7e18024a8"
package set license "MIT"
package set bsystem "go"

build() {
    gow \
        -X github.com/dundee/gdu/v5/build.Version=v$PACKAGE_VERSION \
        -X github.com/dundee/gdu/v5/build.Time=$TIMESTAMP_UNIX \
        ./cmd/gdu
}
