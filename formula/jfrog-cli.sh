package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set git.url "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.10.1.tar.gz"
package set src.sum "e847b6ae26a7915e093b5667c7cd2d9a256a97cd3f9240b7aa118f7fd22f38af"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o jfrog &&
    run install_bins jfrog
}
