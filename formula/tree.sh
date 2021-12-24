package set summary "Display directories as trees (with optional color/HTML output)"
package set webpage "http://mama.indstate.edu/users/ice/tree"
package set src.url "http://mama.indstate.edu/users/ice/tree/src/tree-2.0.0.tgz"
package set src.sum "782cd73179f65cfca7f29326f1511306e49e9b11d5b861daa57e13fd7262889f"
package set license "GPL-2.0-or-later"
package set bsystem "make"

prepare() {
    sed_in_place 's|ifndef __linux__|if 1|' strverscmp.c || return 1
    sed_in_place 's|ifndef __linux__|if 1|' tree.h       || return 1

    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
    if [ "$TARGET_OS_VERS" -lt 26 ] ; then
        sed_in_place 's|nl_langinfo(CODESET)|"UTF-8"|' tree.c
    fi
}

build() {
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" install \
        prefix="$ABI_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="'$CFLAGS $CPPFLAGS -DLINUX -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64'" \
        LDFLAGS="'$LDFLAGS'"
}
