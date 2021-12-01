package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set src.git "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.8.0.tar.gz"
package set src.sum "ec17389afe4b049ef78002b6a7826a398d43aa6198bbebf59c9a075963992f43"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -o jfrog &&
    run install_bins jfrog
}
