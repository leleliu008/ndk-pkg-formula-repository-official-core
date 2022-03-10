package set summary "Kubernetes package manager"
package set webpage "https://helm.sh/"
package set git.url "https://github.com/helm/helm.git"
package set src.url "https://github.com/helm/helm/archive/refs/tags/v3.8.1.tar.gz"
package set src.sum "fed90e57113a6b6e50db03ee711358b04733bc2a50797e1b103a300b1f8a4b16"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow ./cmd/helm
}
