summary "Command-line interface for Jfrog Artifactory and Bintray"
webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
src_git "https://github.com/jfrog/jfrog-cli.git"
src_url "https://github.com/jfrog/jfrog-cli/archive/v1.45.1.tar.gz"
src_sum "f2869aaecc096a6d3e65a7a8dce17876143d0bb744be4d0ce9749e6f1d7fdfae"
license "Apache-2.0"
bsystem "go"

build_in_sourced

build() {
    run go build -v -trimpath -o jfrog &&
    run install_bins jfrog
}
