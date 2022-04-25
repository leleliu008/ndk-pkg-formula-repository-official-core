pkg_set summary "C library for files containing sampled sound"
pkg_set webpage "http://libsndfile.github.io/libsndfile/"
pkg_set git.url "https://github.com/libsndfile/libsndfile.git"
pkg_set src.url "https://github.com/libsndfile/libsndfile/releases/download/1.0.31/libsndfile-1.0.31.tar.bz2"
pkg_set src.sha "a8cfb1c09ea6e90eff4ca87322d4168cdbe5035cb48717b40bf77e751cc02163"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "libogg libvorbis flac sqlite"
pkg_set bsystem "configure"

build() {
    configure \
        --disable-test-coverage \
        --disable-octave \
        --enable-sqlite \
        --enable-external-libs
}
