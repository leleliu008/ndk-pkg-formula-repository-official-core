package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set git.url "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.21.1.tar.gz"
package set src.sum "27ba049e24a2f40db4010ad6574ce866fa1d43f4cb064de286e344e3c7911ef0"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release
}
