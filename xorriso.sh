summary="ISO9660+RR manipulation tool"
homepage="https://www.gnu.org/software/xorriso"
url="https://ftp.gnu.org/gnu/xorriso/xorriso-1.5.2.tar.gz"
sha256="3b69f5c93ae7c40c5bbe4a847fa3963f5efc9c565551622f77121c5792fc17e7"
dependencies="libiconv"

prepare() {
    sed_in_place '/THREAD_LIBS=-lpthread/d' configure &&
    sed_in_place 's/wait3(NULL,WNOHANG,NULL)/waitpid(-1,NULL,WNOHANG)/' xorriso/parse_exec.c &&
    fetch_config_sub &&
    fetch_config_guess
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --enable-largefile \
        --enable-static \
        --enable-shared \
        --enable-libacl \
        --enable-xattr \
        --enable-zlib \
        --enable-libbz2 \
        --enable-libcdio \
        --enable-jtethreads \
        --disable-debug \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
