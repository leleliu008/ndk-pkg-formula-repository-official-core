pkg_set summary "Kubernetes package manager"
pkg_set webpage "https://helm.sh/"
pkg_set git.url "https://github.com/helm/helm.git"
pkg_set src.url "https://github.com/helm/helm/archive/refs/tags/v3.8.2.tar.gz"
pkg_set src.sha "384d90bf16a8ac299e3cc225a39ade26a6ef741f95158685ba9c3cd4a412158e"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow ./cmd/helm
}
