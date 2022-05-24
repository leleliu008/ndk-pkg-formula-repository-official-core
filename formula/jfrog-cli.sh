pkg_set summary "Command-line interface for Jfrog Artifactory and Bintray"
pkg_set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
pkg_set git.url "https://github.com/jfrog/jfrog-cli.git"
pkg_set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.17.0.tar.gz"
pkg_set src.sha "ccd9457e097e187bfd083716cd7e071bb75c22a24d402839342c330a2e2cd72c"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -o jfrog
}
