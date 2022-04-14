package set summary "XML-based font configuration tools"
package set webpage "https://wiki.freedesktop.org/www/Software/fontconfig"
package set git.url "https://gitlab.freedesktop.org/fontconfig/fontconfig.git"
package set src.url "https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.14.0.tar.xz"
package set src.sum "dcbeb84c9c74bbfdb133d535fe1c7bedc9f2221a8daf3914b984c44c520e9bac"
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
