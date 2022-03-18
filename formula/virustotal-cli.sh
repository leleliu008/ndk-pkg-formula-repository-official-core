package set summary "Command-line interface for VirusTotal"
package set git.url "https://github.com/VirusTotal/vt-cli.git"
package set src.url "https://github.com/VirusTotal/vt-cli/archive/0.10.1.tar.gz"
package set src.sum "b9004ebdd7a66eff15d160fe795b7f3c5577af7c316f896e7e05418e89c3792c"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -X cmd.Version=$PACKAGE_VERSION ./vt
}
