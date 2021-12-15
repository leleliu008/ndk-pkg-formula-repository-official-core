package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set src.git "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.9.0.tar.gz"
package set src.sum "91f5c22b94de0de1bea3d141b54d3173e422e75da5088556f8ce0c4f2c6fed76"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o jfrog &&
    run install_bins jfrog
}
