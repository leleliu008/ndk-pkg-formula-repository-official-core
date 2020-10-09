summary="Library provides an easy to use, platform independent, interface to the Linux Kernel's syscall filtering mechanism"
homepage="https://github.com/seccomp/libseccomp"
url="https://github.com/seccomp/libseccomp/releases/download/v2.5.0/libseccomp-2.5.0.tar.gz"
sha256="1ffa7038d2720ad191919816db3479295a4bcca1ec14e02f672539f4983014f3"

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --with-sysroot="$SYSROOT" \
        --disable-code-coverage \
        --disable-python \
        --enable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
