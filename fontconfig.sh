summary "XML-based font configuration tools"
webpage "https://wiki.freedesktop.org/www/Software/fontconfig"
src_git "https://gitlab.freedesktop.org/fontconfig/fontconfig"
src_url "https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.13.93.tar.xz"
src_sum "ea968631eadc5739bc7c8856cef5c77da812d1f67b763f5e51b57b8026c1a0a0"
license "MIT"
require "make pkg-config gperf"
depends "gettext libiconv util-linux json-c expat freetype2-with-harfbuzz"

build() {
    export LDFLAGS="$LDFLAGS -lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lharfbuzz -lglib-2.0 -liconv -lintl -lpcre"
    configure \
        --enable-iconv \
        --disable-docs \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        --with-libintl-prefix="$gettext_INSTALL_DIR" \
        --with-expat="$expat_INSTALL_DIR"
}
