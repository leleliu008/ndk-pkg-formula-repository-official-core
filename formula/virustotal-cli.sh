pkg_set summary "Command-line interface for VirusTotal"
pkg_set git.url "https://github.com/VirusTotal/vt-cli.git"
pkg_set src.url "https://github.com/VirusTotal/vt-cli/archive/0.10.2.tar.gz"
pkg_set src.sha "09953ce45c2fbf872f70294d5fb58e856c0167ed6a7e1312f770e45bab18356b"
pkg_set license "Apache-2.0"
pkg_set bsystem "go"

build() {
    gow -X cmd.Version=$PACKAGE_VERSION ./vt
}
