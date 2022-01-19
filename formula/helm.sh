package set summary "Kubernetes package manager"
package set webpage "https://helm.sh/"
package set git.url "https://github.com/helm/helm.git"
package set src.url "https://github.com/helm/helm/archive/refs/tags/v3.7.2.tar.gz"
package set src.sum "d04175807c2948261517b58120a0810ec20b92c0058acb040e973d0b9de7b08d"
package set bsystem "go"

build() {
    gow ./cmd/helm
}
