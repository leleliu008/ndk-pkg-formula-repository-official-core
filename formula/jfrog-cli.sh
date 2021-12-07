package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set src.git "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.8.2.tar.gz"
package set src.sum "eef227f5d222804894195759c70ef09de1d350467439223c665872aed039cd1b"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o jfrog &&
    run install_bins jfrog
}
