package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set git.url "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.22.1.tar.gz"
package set src.sum "79b4f01774849323db7cc649a270ac4aaccacea2e97260b25f51a634670ecb6e"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release
}
