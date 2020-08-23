summary="Utility to determine file types"
homepage="https://www.darwinsys.com/file"
url="https://astron.com/pub/file/file-5.39.tar.gz"
sha256="f05d286a76d9556243d0cb05814929c2ecf3a5ba07963f8f70bfaaa70517fad1"
#dependencies="bzip2"

prepare() {
    info "install file local."
    PREFIX=`pwd`/out &&
    ./configure --prefix="$PREFIX" &&
    make clean &&
    make install &&
    export PATH=$PREFIX/bin:$PATH &&
    export FILE_COMPILE=$PREFIX/bin/file
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --disable-static \
        --enable-shared \
        --enable-largefile \
        --enable-zlib \
        --disable-bzlib \
        --disable-xzlib \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        PKG_CONFIG='' && \
    make clean &&
    make install
}
