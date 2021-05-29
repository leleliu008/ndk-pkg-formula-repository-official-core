package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set src.git "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.9.3.tar.gz"
package set src.sum "b66b9b4182f8fd23d974c3d35e0552f5fdd5280162cec31102f69c3119ed1694"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -trimpath -v -tags release -ldflags "'-s -w'" -o yq &&
    run install_bins yq
}
