package set summary "Kubernetes package manager"
package set webpage "https://helm.sh/"
package set git.url "https://github.com/helm/helm.git"
package set src.url "https://github.com/helm/helm/archive/refs/tags/v3.8.2.tar.gz"
package set src.sum "384d90bf16a8ac299e3cc225a39ade26a6ef741f95158685ba9c3cd4a412158e"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow ./cmd/helm
}
