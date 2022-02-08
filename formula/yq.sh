package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set git.url "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.19.1.tar.gz"
package set src.sum "c289cef82668722d1851fd4e70fd7bbfdbf5b6fd358d7bb01a9e06c317dafc58"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release
}
