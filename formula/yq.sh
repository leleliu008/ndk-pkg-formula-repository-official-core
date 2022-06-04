pkg_set summary "a lightweight and portable command-line YAML processor"
pkg_set webpage "https://mikefarah.gitbook.io/yq"
pkg_set git.url "https://github.com/mikefarah/yq.git"
pkg_set src.url "https://github.com/mikefarah/yq/archive/v4.25.2.tar.gz"
pkg_set src.sha "2aa2d3e4e44a74bc8a2213f60620f69366a86bbc9f5deffcc15047eaa4cf9e19"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -tags release
}
