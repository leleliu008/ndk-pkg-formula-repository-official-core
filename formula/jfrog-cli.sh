package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set src.git "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.8.1.tar.gz"
package set src.sum "b325186f6d2626bdd52a25169123017522c05b4d55296cb4e4f6549e3dada9fd"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -o jfrog &&
    run install_bins jfrog
}
