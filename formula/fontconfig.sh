package set summary "XML-based font configuration tools"
package set webpage "https://wiki.freedesktop.org/www/Software/fontconfig"
package set src.git "https://gitlab.freedesktop.org/fontconfig/fontconfig"
package set src.url "https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.13.93.tar.xz"
package set src.sum "ea968631eadc5739bc7c8856cef5c77da812d1f67b763f5e51b57b8026c1a0a0"
package set license "MIT"
package set bsystem "configure"
package set dep.cmd "pkg-config gperf"
package set dep.pkg "gettext libiconv util-linux json-c expat freetype2-with-harfbuzz"
package set ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lharfbuzz -lglib-2.0 -liconv -lintl -lpcre -lfreetype"

build() {
    configure \
        --enable-iconv \
        --disable-docs \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        --with-libintl-prefix="$gettext_INSTALL_DIR" \
        --with-expat="$expat_INSTALL_DIR"
}
