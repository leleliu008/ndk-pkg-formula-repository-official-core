pkg_set summary "Command-line interface for Jfrog Artifactory and Bintray"
pkg_set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
pkg_set git.url "https://github.com/jfrog/jfrog-cli.git"
pkg_set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.18.2.tar.gz"
pkg_set src.sha "f03faf282899cdb7773e7f4ce9921f67040078f592b8e4c275ac6d4917d32eb4"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -o jfrog
}
