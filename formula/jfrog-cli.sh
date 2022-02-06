package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set git.url "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.12.0.tar.gz"
package set src.sum "4a524dd36165ffe992b80cb81c9a80ab027158319fba1b828e2a0e3ea53a77d8"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -o jfrog
}
