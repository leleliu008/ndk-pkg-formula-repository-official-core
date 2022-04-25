pkg_set summary "ID3 tag manipulation library"
pkg_set webpage "https://id3lib.sourceforge.io"
pkg_set src.url "https://downloads.sourceforge.net/project/id3lib/id3lib/3.8.3/id3lib-3.8.3.tar.gz"
pkg_set src.sha "2749cc3c0cd7280b299518b1ddf5a5bcfe2d1100614519b68702230e26c7d079"
pkg_set license "LGPL-2.0-or-later"
pkg_set dep.pkg "libiconv"
pkg_set bsystem "configure"

prepare() {
    sed_in_place 's/iomanip.h/iomanip/g' configure || return 1
    for item in $(grep -l "unsigned int argc" examples/*)
    do
        sed_in_place 's/int main( unsigned int argc,/int main(int argc,/g' $item || return 1
    done
}

build() {
    configure \
        --enable-cxx-warnings=no \
        --enable-iso-cxx=no \
        --enable-ansi=no \
        --enable-debug=no
}
