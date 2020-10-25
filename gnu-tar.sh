summary="GNU version of the tar archiving utility"
homepage="https://www.gnu.org/software/tar"
url="https://ftp.gnu.org/gnu/tar/tar-1.32.tar.gz"
sha256="b59549594d91d84ee00c99cf2541a3330fed3a42c440503326dab767f2fbb96c"
license="GPL-3.0"

prepare() {
    fetch https://raw.githubusercontent.com/muojie/nginx-android/master/glob/glob.h --output-dir=lib &&
    fetch https://raw.githubusercontent.com/muojie/nginx-android/master/glob/glob.c --output-dir=lib
}

build() {
    cd "$SOURCE_DIR" &&
    ./configure \
        --host="$BUILD_FOR_HOST" \
        --prefix="$ABI_INSTALL_DIR" \
        --with-included-regex \
        --with-xattrs \
        --without-posix-acls \
        --without-selinux \
        --disable-acl \
        --disable-nls \
        --disable-rpath \
        --disable-gcc-warnings \
        --enable-largefile \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS -D__USE_FORTIFY_LEVEL=0 -D__POSIX_VISIBLE=199209 -D__BSD_VISIBLE" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    sed_in_place 's/#include <glob.h>/#include "glob.h"/' lib/glob.c &&
    sed_in_place 's/#include <glob.h>/#include "glob.h"/' lib/wordsplit.c &&
    sed_in_place '/wordsplit.h/a \ \ glob.h \\' lib/Makefile &&
    sed_in_place '/wordsplit.c/a \ \ glob.c \\' lib/Makefile &&
    sed_in_place 's/wordsplit.$(OBJEXT)/wordsplit.$(OBJEXT) glob.$(OBJEXT)/' lib/Makefile &&
    make clean &&
    make install
}
