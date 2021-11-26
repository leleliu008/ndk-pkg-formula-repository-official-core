package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set src.git "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.6.2.tar.gz"
package set src.sum "d8d84c0b3e421fe2b8d96ec20eefaf52f3a077ac06ba0fc879298cab8c3ae4c3"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -o jfrog &&
    run install_bins jfrog
}
