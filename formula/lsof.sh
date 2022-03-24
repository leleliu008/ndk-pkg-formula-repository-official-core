package set summary "Utility to list open files"
package set webpage "https://people.freebsd.org/~abe"
package set git.url "https://github.com/lsof-org/lsof.git"
package set src.url "https://github.com/lsof-org/lsof/archive/4.94.0.tar.gz"
package set src.sum "a9865eeb581c3abaac7426962ddb112ecfd86a5ae93086eb4581ce100f8fa8f4"
package set license "Zlib"
package set bsystem "make"
package set dep.pkg "libtirpc"
package set binbstd 'yes'
package set sdk.api 26
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
    makew &&
    run install_bins lsof &&
    run install_mans Lsof.8
}
