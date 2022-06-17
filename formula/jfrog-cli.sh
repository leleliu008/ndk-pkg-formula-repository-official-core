pkg_set summary "Command-line interface for Jfrog Artifactory and Bintray"
pkg_set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
pkg_set git.url "https://github.com/jfrog/jfrog-cli.git"
pkg_set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.19.0.tar.gz"
pkg_set src.sha "d9f6d627840b98075814b30364dbbd52fd5ef6f81f8726381545f61871f433b2"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -o jfrog
}
