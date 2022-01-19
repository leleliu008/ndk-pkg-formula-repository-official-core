package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set git.url "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.11.0.tar.gz"
package set src.sum "81afbca036d9013b03ad4080f5b51177fed3cd7588ddc38d319251c682b3d5ce"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -o jfrog
}
