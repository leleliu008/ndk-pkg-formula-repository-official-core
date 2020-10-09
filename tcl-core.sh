summary="Tool Command Language"
homepage="https://www.tcl-lang.org"
url="https://downloads.sourceforge.net/project/tcl/Tcl/8.6.10/tcl8.6.10-src.tar.gz"
sha256="5196dbf6638e3df8d5c87b5815c8c2b758496eb6f0e41446596c9a4e638d87ed"
version="8.6.10"
license="TCL"

prepare() {
    cd unix &&
    sed_in_place 's/test "`uname -s`" = "Darwin"/false/g' configure
}

build() {
    unset EXTRA_CONFIGURE_FLAGS
    
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
    if [ $TARGET_API -lt 26 ] ; then
        EXTRA_CONFIGURE_FLAGS="--disable-langinfo"
    else
        EXTRA_CONFIGURE_FLAGS="--enable-langinfo"
    fi
    
    case $TARGET_ABI in
        arm64-v8a|x86_64)
            EXTRA_CONFIGURE_FLAGS="$EXTRA_CONFIGURE_FLAGS --enable-64bit";;
        *)  EXTRA_CONFIGURE_FLAGS="$EXTRA_CONFIGURE_FLAGS --disable-64bit"
    esac

    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        --enable-dtrace \
        --enable-zipfs \
        --enable-load \
        --enable-dll-unloading \
        --enable-threads \
        --enable-shared \
        --disable-rpath \
        --disable-symbols \
        --disable-corefoundation \
        --disable-framework \
        --with-tzdata \
        $EXTRA_CONFIGURE_FLAGS \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        tcl_cv_sys_version=Linux &&
    make clean &&
    make &&
    make install 
}
