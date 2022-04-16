package set summary "Command-line interface for VirusTotal"
package set git.url "https://github.com/VirusTotal/vt-cli.git"
package set src.url "https://github.com/VirusTotal/vt-cli/archive/0.10.2.tar.gz"
package set src.sum "09953ce45c2fbf872f70294d5fb58e856c0167ed6a7e1312f770e45bab18356b"
package set license "Apache-2.0"
package set bsystem "go"

build() {
    gow -X cmd.Version=$PACKAGE_VERSION ./vt
}
