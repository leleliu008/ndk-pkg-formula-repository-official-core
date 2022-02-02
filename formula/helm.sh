package set summary "Kubernetes package manager"
package set webpage "https://helm.sh/"
package set git.url "https://github.com/helm/helm.git"
package set src.url "https://github.com/helm/helm/archive/refs/tags/v3.8.0.tar.gz"
package set src.sum "4f3c8cbe01a2ca9c0a639aa82cb2c27319466c04f92fd145f861108e50d4ed60"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow ./cmd/helm
}
