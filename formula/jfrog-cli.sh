pkg_set summary "Command-line interface for Jfrog Artifactory and Bintray"
pkg_set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
pkg_set git.url "https://github.com/jfrog/jfrog-cli.git"
pkg_set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.15.1.tar.gz"
pkg_set src.sha "c5e0bd23bdba940e2196ed492d1468e5a674650020b5d5bacd9d5c43976e5ae0"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -o jfrog
}
