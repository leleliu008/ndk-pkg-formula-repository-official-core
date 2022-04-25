pkg_set summary "HTTP load testing tool and library"
pkg_set git.url "https://github.com/tsenart/vegeta.git"
pkg_set src.url "https://github.com/tsenart/vegeta/archive/v12.8.4.tar.gz"
pkg_set src.sha "418249d07f04da0a587df45abe34705166de9e54a836e27e387c719ebab3e357"
pkg_set license "MIT"
pkg_set bsystem "go"

build() {
    gow -X main.Version=$PACKAGE_VERSION
}
