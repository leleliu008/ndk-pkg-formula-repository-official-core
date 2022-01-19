package set summary "Command-line interface for VirusTotal"
package set git.url "https://github.com/VirusTotal/vt-cli.git"
package set src.url "https://github.com/VirusTotal/vt-cli/archive/0.10.0.tar.gz"
package set src.sum "88ef4d2c7708be1bc27c2290181996b6c18e08d5f56a8765de8a5ec13f68e6ac"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -X cmd.Version=$PACKAGE_VERSION ./vt
}
