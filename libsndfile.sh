summary="C library for files containing sampled sound"
homepage="http://www.mega-nerd.com/libsndfile"
url="http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.28.tar.gz"
sha256="1ff33929f042fa333aed1e8923aa628c3ee9e1eb85512686c55092d1e5a9dfa9"
dependencies="libogg libvorbis flac sqlite"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --disable-test-coverage \
        --disable-octave \
        --enable-external-libs \
        --enable-sqlite \
        CC="$CC" \
        CFLAGS="$CFLAGS -logg -lm -lvorbis -lvorbisenc -lFLAC -lsqlite3" \
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
