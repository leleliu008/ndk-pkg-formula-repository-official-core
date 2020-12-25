summary "Utility to list open files"
webpage "https://people.freebsd.org/~abe"
src_git "https://github.com/lsof-org/lsof"
src_url "https://github.com/lsof-org/lsof/archive/4.94.0.tar.gz"
src_sum "a9865eeb581c3abaac7426962ddb112ecfd86a5ae93086eb4581ce100f8fa8f4"
license "Zlib"
require "make"
depends "libtirpc"

# int mblen(const char* __s, size_t __n) __INTRODUCED_IN(26)

build() {
    include_stub_getdtablesize

    export LSOF_MAKE="$MAKE"
    export LSOF_CC="$CC"
    export LSOF_AR="$AR rs"
    export LSOF_RANLIB="$RANLIB"
    export LSOF_ARCH="$BUILD_FOR_ARCH"
    export LSOF_INCLUDE="$SYSTEM_INCLUDE_DIR"
    export LSOF_CFGF="$CFLAGS $CPPFLAGS"
    export LSOF_CFGL="$LDFLAGS -L$SOURCE_DIR/lib $libtirpc_LIBRARY_DIR/libtirpc.a"
    
    cd $SOURCE_DIR &&
    ./Configure -clean &&
    ./Configure -n linux &&
    $MAKE &&
    install_files lsof Lsof.8
}
