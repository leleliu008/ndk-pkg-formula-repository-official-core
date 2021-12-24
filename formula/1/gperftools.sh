package set summary "Multi-threaded malloc() and performance analysis tools"
package set src.git "https://github.com/gperftools/gperftools.git"
#package set src.url "https://github.com/gperftools/gperftools/releases/download/gperftools-2.9.1/gperftools-2.9.1.tar.gz"
#package set src.sum "ea566e528605befb830671e359118c2da718f721c27225cbbc93858c7520fee3"
package set license "BSD-3-Clause"
package set dep.pkg "xz libglob"
package set dep.cmd "pkg-config"
package set bsystem "autotools"

# grp.h: struct group* getgrent(void) __INTRODUCED_IN(26);
package set sdk.api 26

prepare() {
    sed_in_place 's|ulong|unsigned long|g' src/base/linux_syscall_support.h
    run autoreconf -ivf
}

build() {
    # int glob(const char* __pattern, int __flags, int (*__error_callback)(const char* __failure_path, int __failure_errno), glob_t* __result_ptr) __INTRODUCED_IN(28);
    # void globfree(glob_t* __result_ptr) __INTRODUCED_IN(28);
    if [ "$TARGET_OS_VERS" -lt 28 ] ; then
        export LDFLAGS="$LDFLAGS $libglob_LIBRARY_DIR/libglob.a"
    fi
    configure --disable-libunwind
}
