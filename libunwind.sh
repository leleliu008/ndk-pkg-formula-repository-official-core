package set summary "C API for determining the call-chain of a program"
package set webpage "https://www.nongnu.org/libunwind"
package set src.url "https://download.savannah.nongnu.org/releases/libunwind/libunwind-1.5.0.tar.gz"
package set src.sum "90337653d92d4a13de590781371c604f9031cdb50520366aa1e3a91e1efb1017"
package set license "MIT"
package set bsystem "configure"
package set dep.pkg "xz zlib"

build() {
    configure --disable-tests --disable-coredump
}
