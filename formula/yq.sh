package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set git.url "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.23.1.tar.gz"
package set src.sum "f55ffb9c6d7926b06d5862eb6a9e9ea942ec2883286df8e2e3d6f0716cc36eed"
package set license "MIT"
package set bsystem "go"

build() {
    gow -tags release
}
