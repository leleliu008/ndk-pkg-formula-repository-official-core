pkg_set summary "Palette quantization library extracted from pnquant2"
pkg_set webpage "https://pngquant.org/lib"
pkg_set git.url "https://github.com/ImageOptim/libimagequant.git"
pkg_set src.url "https://github.com/ImageOptim/libimagequant/archive/4.0.0.tar.gz"
pkg_set src.sha "d041f6f2dac36df76f22cedaf74c914f46bff1fea7d6025d1b13199204c25dd8"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "cargo"
pkg_set bscript "imagequant-sys"
pkg_set binbstd "yes"

build() {
    cargow build &&
    install_incs libimagequant.h &&
    mv ../target/$RUST_TARGET/release/libimagequant_sys.a libimagequant.a &&
    install_libs libimagequant.a
}
