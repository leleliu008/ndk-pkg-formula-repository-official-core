package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set git.url "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.15.1.tar.gz"
package set src.sum "c5e0bd23bdba940e2196ed492d1468e5a674650020b5d5bacd9d5c43976e5ae0"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -o jfrog
}
