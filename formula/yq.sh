package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set git.url "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.24.5.tar.gz"
package set src.sum "8ffab12d2d527f0ac62823777201f8e5e78c9af5c754914274db2733da98c796"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release
}
