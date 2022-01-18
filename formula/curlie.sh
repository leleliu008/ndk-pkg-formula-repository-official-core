package set summary "Power of curl, ease of use of httpie"
package set webpage "https://curlie.io"
package set git.url "https://github.com/rs/curlie.git"
package set src.url "https://github.com/rs/curlie/archive/v1.6.7.tar.gz"
package set src.sum "25a0ea35be6ff9dd88551c992a0f7ea565ce2fae8213c674bd28a7cc512493d9"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o curlie &&
    run install_bins curlie
}
