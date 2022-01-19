package set summary "HTTP load testing tool and library"
package set git.url "https://github.com/tsenart/vegeta.git"
package set src.url "https://github.com/tsenart/vegeta/archive/v12.8.4.tar.gz"
package set src.sum "418249d07f04da0a587df45abe34705166de9e54a836e27e387c719ebab3e357"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X main.Version=$PACKAGE_VERSION
}
