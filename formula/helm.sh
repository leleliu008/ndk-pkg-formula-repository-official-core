pkg_set summary "Kubernetes package manager"
pkg_set webpage "https://helm.sh/"
pkg_set git.url "https://github.com/helm/helm.git"
pkg_set src.url "https://github.com/helm/helm/archive/refs/tags/v3.9.0.tar.gz"
pkg_set src.sha "4674aac1527db460bcbb6e0d0fa9677a4ce8b1ae7cc535a7a57c9c1778683cbe"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow ./cmd/helm
}
