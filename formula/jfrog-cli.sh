pkg_set summary "Command-line interface for Jfrog Artifactory and Bintray"
pkg_set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
pkg_set git.url "https://github.com/jfrog/jfrog-cli.git"
pkg_set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.16.2.tar.gz"
pkg_set src.sha "9c4da58c688d5d680602c4ac12505ac7a4bbaaffe1d7dc3a788ea08a087aa29f"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -o jfrog
}
