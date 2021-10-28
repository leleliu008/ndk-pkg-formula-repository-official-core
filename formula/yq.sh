package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set src.git "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.13.5.tar.gz"
package set src.sum "c0d637e7d7d5f370960af713e0f7e769e1b0876f71a844373d0307cbba68c4b2"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -trimpath -v -tags release -ldflags "'-s -w'" -o yq &&
    run install_bins yq
}
