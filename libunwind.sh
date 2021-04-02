summary "C API for determining the call-chain of a program"
webpage "https://www.nongnu.org/libunwind"
src_url "https://download.savannah.nongnu.org/releases/libunwind/libunwind-1.5.0.tar.gz"
src_sum "90337653d92d4a13de590781371c604f9031cdb50520366aa1e3a91e1efb1017"
license "MIT"
bsystem "configure"
depends "xz zlib"

build() {
    configure --disable-tests
}
