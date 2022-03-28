package set summary "Command-line interface for Jfrog Artifactory and Bintray"
package set webpage "https://www.jfrog.com/confluence/display/CLI/JFrog+CLI"
package set git.url "https://github.com/jfrog/jfrog-cli.git"
package set src.url "https://github.com/jfrog/jfrog-cli/archive/v2.14.2.tar.gz"
package set src.sum "c7eabad4e84f5e533670bb78d76c2c0472779bbdb8347227ec699b3387ddc6a8"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -o jfrog
}
