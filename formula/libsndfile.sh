package set summary "C library for files containing sampled sound"
package set webpage "http://www.mega-nerd.com/libsndfile"
package set src.url "http://www.mega-nerd.com/libsndfile/files/libsndfile-1.0.28.tar.gz"
package set src.sum "1ff33929f042fa333aed1e8923aa628c3ee9e1eb85512686c55092d1e5a9dfa9"
package set bsystem "configure"
package set dep.pkg "libogg libvorbis flac sqlite"

build() {
    configure \
        --disable-test-coverage \
        --disable-octave \
        --enable-sqlite \
        --enable-external-libs
}
