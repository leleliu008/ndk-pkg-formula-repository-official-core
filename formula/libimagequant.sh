package set summary "Palette quantization library extracted from pnquant2"
package set webpage "https://pngquant.org/lib"
package set git.url "https://github.com/ImageOptim/libimagequant.git"
package set src.url "https://github.com/ImageOptim/libimagequant/archive/4.0.0.tar.gz"
package set src.sum "d041f6f2dac36df76f22cedaf74c914f46bff1fea7d6025d1b13199204c25dd8"
package set license "GPL-3.0-or-later"
package set bsystem "cargo"
package set bscript "imagequant-sys"
package set binbstd "yes"

build() {
    cargow build &&
    install_incs libimagequant.h &&
    mv ../target/$RUST_TARGET/release/libimagequant_sys.a libimagequant.a &&
    install_libs libimagequant.a
}
