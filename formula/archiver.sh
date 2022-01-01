package set summary "Cross-platform, multi-format archive utility"
package set git.url "https://github.com/mholt/archiver.git"
package set src.url "https://github.com/mholt/archiver/archive/v3.5.1.tar.gz"
package set src.sum "b69a76f837b6cc1c34c72ace16670360577b123ccc17872a95af07178e69fbe7"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -o arc cmd/arc/main.go &&
    run install_bins arc
}
