summary="GNU grep, egrep and fgrep"
homepage="https://www.gnu.org/software/grep"
url="https://ftp.gnu.org/gnu/grep/grep-3.4.tar.xz"
sha256="58e6751c41a7c25bfc6e9363a41786cff3ba5709cf11d5ad903cf7cce31cc3fb"
license="GPL-3.0-or-later"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-threads=posix \
        --enable-largefile \
        --disable-nls \
        --disable-rpath \
        --disable-assert \
        --disable-gcc-warnings \
        --with-included-regex \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
