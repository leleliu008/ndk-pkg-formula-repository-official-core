package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set src.git "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.15.1.tar.gz"
package set src.sum "a21ef79bcee6ed575d5679a6dc555c8cbcc6df7ecaeaf8ce0871a01a04465a0a"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -trimpath -v -tags release -ldflags "'-s -w'" -o yq &&
    run install_bins yq
}
