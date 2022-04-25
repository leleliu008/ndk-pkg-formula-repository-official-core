pkg_set summary "XML-based font configuration tools"
pkg_set webpage "https://wiki.freedesktop.org/www/Software/fontconfig"
pkg_set git.url "https://gitlab.freedesktop.org/fontconfig/fontconfig.git"
pkg_set src.url "https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.14.0.tar.xz"
pkg_set src.sha "dcbeb84c9c74bbfdb133d535fe1c7bedc9f2221a8daf3914b984c44c520e9bac"
pkg_set license "MIT"
pkg_set bsystem "configure"
pkg_set dep.cmd "pkg-config gperf"
pkg_set dep.pkg "gettext libiconv util-linux json-c expat freetype2-with-harfbuzz"
pkg_set ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lharfbuzz -lglib-2.0 -liconv -lintl -lpcre -lfreetype"

build() {
    configure \
        --enable-iconv \
        --disable-docs \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        --with-libintl-prefix="$gettext_INSTALL_DIR" \
        --with-expat="$expat_INSTALL_DIR"
}
