pkg_set summary "Utility to list open files"
pkg_set webpage "https://people.freebsd.org/~abe"
pkg_set git.url "https://github.com/lsof-org/lsof.git"
pkg_set src.url "https://github.com/lsof-org/lsof/archive/4.95.0.tar.gz"
pkg_set src.sha "8ff4c77736cc7d9556da9e2c7614cc4292a12f1979f20bd520d3c6f64b66a4d7"
pkg_set license "Zlib"
pkg_set bsystem "gmake"
pkg_set dep.pkg "libtirpc"
pkg_set binbstd "yes"
pkg_set sdk.api 26
# int mblen(const char* __s, size_t __n) __INTRODUCED_IN(26)


build() {
    include_stub_getdtablesize

    export LSOF_MAKE="make"
    export LSOF_CC="$CC"
    export LSOF_AR="$AR rsc"
    export LSOF_RANLIB="$RANLIB"
    export LSOF_ARCH="$TARGET_OS_ARCH"
    export LSOF_INCLUDE="$SYSTEM_INCLUDE_DIR"
    export LSOF_CFGF="$CFLAGS $CPPFLAGS"
    export LSOF_CFGL="$LDFLAGS -L$PACKAGE_BSCRIPT_DIR/lib $libtirpc_LIBRARY_DIR/libtirpc.so"
    
    run ./Configure -clean &&
    run ./Configure -n linux &&
    gmakew &&
    run install_bins lsof &&
    run install_mans Lsof.8
}
