pkg_set summary "a lightweight and portable command-line YAML processor"
pkg_set webpage "https://mikefarah.gitbook.io/yq"
pkg_set git.url "https://github.com/mikefarah/yq.git"
pkg_set src.url "https://github.com/mikefarah/yq/archive/v4.25.3.tar.gz"
pkg_set src.sha "30309ae4efbe8b4f0a26e3c878bac72288faa0ba54f544c7fecdb3e0373966eb"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -tags release
}
