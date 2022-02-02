package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set git.url "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.18.1.tar.gz"
package set src.sum "9883f6292fc5b2cc697a2f7f7441965948545831265af8dad51a4b12696be086"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release
}
