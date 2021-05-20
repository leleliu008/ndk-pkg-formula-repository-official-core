package set summary "Library for sample rate conpackage set version of audio data"
package set webpage "http://www.mega-nerd.com/SRC"
package set src.url "http://www.mega-nerd.com/SRC/libsamplerate-0.1.9.tar.gz"
package set src.sum "0a7eb168e2f21353fb6d84da152e4512126f7dc48ccb0be80578c565413444c1"
package set bsystem "autogen"
package set dep.cmd "libtoolize libtool"
package set dep.pkg "libsndfile fftw"
package set ldflags "-logg -lm -lvorbis -lvorbisenc -lFLAC -lsqlite3"

prepare() {
    autoreconf -ivf &&
    sed_in_place '$d' autogen.sh &&
    ./autogen.sh &&
    sed_in_place 's|sys/soundcard.h|linux/soundcard.h|' examples/audio_out.c
}

build() {
    export CFLAGS="$CFLAGS $LDFLAGS"
    configure
}
