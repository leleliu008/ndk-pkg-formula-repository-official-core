summary="GNU implementation of which utility"
homepage="https://carlowood.github.io/which/index.html"
url="https://ftp.gnu.org/gnu/which/which-2.21.tar.gz"
sha256="f4a245b94124b377d8b49646bf421f9155d36aa7614b6ebf83705d3ffc76eaad"
license="GPL-3.0"

# void endgrent(void) __INTRODUCED_IN(26);
build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --disable-iberty \
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
