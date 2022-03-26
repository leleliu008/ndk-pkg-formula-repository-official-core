package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set git.url "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.14.0.tar.gz"
package set src.sum "82ac7ddfbc26ca9a0bb578236e5c2f21f3a08a3fc93b5849c98a754acb69b2a5"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -o jfrog
}
