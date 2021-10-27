package set summary "GNU package set version of the tar archiving utility"
package set webpage "https://www.gnu.org/software/tar"
package set src.git "https://git.savannah.gnu.org/git/tar.git"
package set src.url "https://ftp.gnu.org/gnu/tar/tar-1.34.tar.gz"
package set src.sum "03d908cf5768cfe6b7ad588c921c6ed21acabfb2b79b788d1330453507647aed"
package set license "GPL-3.0"
package set dep.pkg "libglob"
package set bsystem "configure"

# no member named '_p' in 'struct __sFILE'
#  return fp->_p - fp->_bf._base;
package set sdk.api 24

build() {
    export CPPFLAGS="$CPPFLAGS -D__USE_FORTIFY_LEVEL=0 -D__POSIX_VISIBLE=199209 -D__BSD_VISIBLE"
    export LDFLAGS="$LDFLAGS -Wl,--Bstatic -lglob -Wl,--Bdynamic"
    configure \
        --with-included-regex \
        --with-xattrs \
        --without-posix-acls \
        --without-selinux \
        --disable-acl \
        --disable-gcc-warnings
}
