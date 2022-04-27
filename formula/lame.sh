pkg_set summary "High quality MPEG Audio Layer III (MP3) encoder"
pkg_set webpage "https://lame.sourceforge.io"
pkg_set svn.url "https://svn.code.sf.net/p/lame/svn/trunk/lame"
pkg_set src.url "https://downloads.sourceforge.net/sourceforge/lame/lame-3.100.tar.gz"
pkg_set src.sha "ddfe36cab873794038ae2c1210557ad34857a4b6bdc515785d1da9e175b1da1e"
pkg_set bsystem "configure"
pkg_set license "LGPL-2.0-or-later|COPYING|http://svn.code.sf.net/p/lame/svn/trunk/lame/COPYING"

build() {
    configure \
        --without-dmalloc \
        --disable-frontend \
        --enable-nasm
}
