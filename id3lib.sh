summary="ID3 tag manipulation library"
homepage="https://id3lib.sourceforge.io"
url="https://downloads.sourceforge.net/project/id3lib/id3lib/3.8.3/id3lib-3.8.3.tar.gz"
sha256="2749cc3c0cd7280b299518b1ddf5a5bcfe2d1100614519b68702230e26c7d079"
dependencies="libiconv"

prepare() {
    sed_in_place 's/iomanip.h/iomanip/g' configure && {
        for item in $(grep -l "unsigned int argc" examples/*)
        do
            sed_in_place 's/int main( unsigned int argc,/int main(int argc,/g' $item || return 1
        done
    } &&
    fetch_config_sub &&
    fetch_config_guess
}

build() {
    configure \
        --enable-cxx-warnings=no \
        --enable-iso-cxx=no \
        --enable-ansi=no \
        --enable-debug=no
}
