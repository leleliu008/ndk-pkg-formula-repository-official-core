summary="Library for sample rate conversion of audio data"
homepage="http://www.mega-nerd.com/SRC"
url="http://www.mega-nerd.com/SRC/libsamplerate-0.1.9.tar.gz"
sha256="0a7eb168e2f21353fb6d84da152e4512126f7dc48ccb0be80578c565413444c1"
dependencies="libsndfile fftw"

build_first() {
    autoreconf -ivf &&
    sed_in_place '$d' autogen.sh &&
    ./autogen.sh
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --disable-option-checking \
        --enable-static \
        --enable-shared \
        --enable-sndfile \
        --enable-fftw \
        CC="$CC" \
        CFLAGS="$CFLAGS -lsndfile -logg -lm -lvorbis -lvorbisenc -lFLAC -lsqlite3 -lfftw3" \
        CXX="$CXX" \
        CXXFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG="" &&
    make clean &&
    make install
}
