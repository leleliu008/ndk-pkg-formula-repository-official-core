package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set git.url "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.24.2.tar.gz"
package set src.sum "f85a01a3ed50c356d44e974224cf2be48039c73be65e9c8fe50d780fafa40f6d"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release
}
