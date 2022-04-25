pkg_set summary "a lightweight and portable command-line YAML processor"
pkg_set webpage "https://mikefarah.gitbook.io/yq"
pkg_set git.url "https://github.com/mikefarah/yq.git"
pkg_set src.url "https://github.com/mikefarah/yq/archive/v4.24.5.tar.gz"
pkg_set src.sha "8ffab12d2d527f0ac62823777201f8e5e78c9af5c754914274db2733da98c796"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -tags release
}
