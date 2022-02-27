package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set git.url "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.13.0.tar.gz"
package set src.sum "1284879a4ec256b752d226dccea20929f042a8d816d21f630a36b3492c5e9df1"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -o jfrog
}
