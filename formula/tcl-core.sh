pkg_set summary "Tool Command Language"
pkg_set webpage "https://www.tcl-lang.org"
pkg_set version "8.6.12"
pkg_set src.url "https://downloads.sourceforge.net/project/tcl/Tcl/${PACKAGE_VERSION}/tcl${PACKAGE_VERSION}-src.tar.gz"
pkg_set src.sha "26c995dd0f167e48b11961d891ee555f680c175f7173ff8cb829f4ebcde4c1a6"
pkg_set license "TCL"
pkg_set bsystem "configure"
pkg_set bscript "unix"

prepare() {
    sed_in_place 's/test "`uname -s`" = "Darwin"/false/g' configure
}

build() {
    unset EXTRA_CONFIGURE_FLAGS
    
    if echo "$TARGET_OS_ARCH" | grep -q '64' ; then
        EXTRA_CONFIGURE_FLAGS="$EXTRA_CONFIGURE_FLAGS --enable-64bit"
    else
        EXTRA_CONFIGURE_FLAGS="$EXTRA_CONFIGURE_FLAGS --disable-64bit"
    fi

    configure \
        --enable-dtrace \
        --enable-zipfs \
        --enable-load \
        --enable-dll-unloading \
        --enable-threads \
        --disable-symbols \
        --disable-corefoundation \
        --disable-framework \
        --with-tzdata \
        $EXTRA_CONFIGURE_FLAGS \
        tcl_cv_sys_version=Linux
}
