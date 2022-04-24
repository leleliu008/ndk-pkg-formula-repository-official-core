package set summary "High quality MPEG Audio Layer III (MP3) encoder"
package set webpage "https://lame.sourceforge.io"
package set svn.url "https://svn.code.sf.net/p/lame/svn/trunk/lame"
package set src.url "https://downloads.sourceforge.net/sourceforge/lame/lame-3.100.tar.gz"
package set src.sum "ddfe36cab873794038ae2c1210557ad34857a4b6bdc515785d1da9e175b1da1e"
package set license "LGPL-2.0-or-later;COPYING;http://svn.code.sf.net/p/lame/svn/trunk/lame/COPYING"
package set bsystem "configure"

build() {
    configure \
        --without-dmalloc \
        --disable-frontend \
        --enable-nasm
}
