pkg_set summary "Extremely Fast Compression algorithm"
pkg_set webpage "https://lz4.org"
pkg_set git.url "https://github.com/lz4/lz4.git"
pkg_set src.url "https://github.com/lz4/lz4/archive/v1.9.3.tar.gz"
pkg_set src.sha "030644df4611007ff7dc962d981f390361e6c97a34e5cbc393ddfbe019ffe2c1"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "make"
pkg_set binbstd "yes"

build() {
    makew clean   TARGET_OS=Linux &&
    makew install TARGET_OS=Linux \
        PREFIX="$TARGET_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="'$CFLAGS'" \
        LDFLAGS="'$LDFLAGS'" \
        AR="$AR" \
        BUILD_STATIC=yes \
        BUILD_SHARED=yes
}
