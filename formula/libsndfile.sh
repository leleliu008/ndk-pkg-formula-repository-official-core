package set summary "C library for files containing sampled sound"
package set webpage "http://libsndfile.github.io/libsndfile/"
package set src.git "https://github.com/libsndfile/libsndfile.git"
package set src.url "https://github.com/libsndfile/libsndfile/releases/download/1.0.31/libsndfile-1.0.31.tar.bz2"
package set src.sum "a8cfb1c09ea6e90eff4ca87322d4168cdbe5035cb48717b40bf77e751cc02163"
package set bsystem "configure"
package set dep.pkg "libogg libvorbis flac sqlite"

build() {
    configure \
        --disable-test-coverage \
        --disable-octave \
        --enable-sqlite \
        --enable-external-libs
}
