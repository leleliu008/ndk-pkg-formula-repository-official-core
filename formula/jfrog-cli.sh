package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set git.url "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.15.0.tar.gz"
package set src.sum "55ab46499145d00a0ae639a5bb9ad588abda78a0f7eaaca2e387d06e151f9daf"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -o jfrog
}
