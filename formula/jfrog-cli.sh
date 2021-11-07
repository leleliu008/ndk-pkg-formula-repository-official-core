package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set src.git "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.5.0.tar.gz"
package set src.sum "370f69508bb14c0c66fe4d99948a39daf6d88d4ff0e690e320d5d6ab99e4c735"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -o jfrog &&
    run install_bins jfrog
}
