pkg_set summary "a lightweight and portable command-line YAML processor"
pkg_set webpage "https://mikefarah.gitbook.io/yq"
pkg_set git.url "https://github.com/mikefarah/yq.git"
pkg_set src.url "https://github.com/mikefarah/yq/archive/v4.25.1.tar.gz"
pkg_set src.sha "2f0736f0650bef121e31332e1f52c67e9bd975ca651e1507a2e5e3744c10e766"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -tags release
}
