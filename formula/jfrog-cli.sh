package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set src.git "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.5.1.tar.gz"
package set src.sum "75cfde9a4f81c85ef2802c11f481b42004326519ab90305156d03508d388dcf1"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -o jfrog &&
    run install_bins jfrog
}
