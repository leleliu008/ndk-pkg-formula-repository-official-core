package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set src.git "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.16.2.tar.gz"
package set src.sum "beb0f292d8375cddb82d25f11f5c203073c1d3e2437807450ddcad31758be8aa"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -trimpath -v -tags release -ldflags "'-s -w'" -o yq &&
    run install_bins yq
}
