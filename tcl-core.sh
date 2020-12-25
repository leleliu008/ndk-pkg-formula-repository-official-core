summary "Tool Command Language"
webpage "https://www.tcl-lang.org"
version "8.6.10"
src_url "https://downloads.sourceforge.net/project/tcl/Tcl/$(version)/tcl$(version)-src.tar.gz"
src_sum "5196dbf6638e3df8d5c87b5815c8c2b758496eb6f0e41446596c9a4e638d87ed"
license "TCL"

prepare() {
    cd unix &&
    SOURCE_DIR="$PWD" &&
    sed_in_place 's/test "`uname -s`" = "Darwin"/false/g' configure
}

build() {
    unset EXTRA_CONFIGURE_FLAGS
    
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
    if [ $MIN_SDK_API_LEVEL -lt 26 ] ; then
        EXTRA_CONFIGURE_FLAGS="tcl_cv_langinfo_h=no"
    else
        EXTRA_CONFIGURE_FLAGS="tcl_cv_langinfo_h=yes"
    fi
    
    case $BUILD_FOR_ABI in
        arm64-v8a|x86_64)
            EXTRA_CONFIGURE_FLAGS="$EXTRA_CONFIGURE_FLAGS --enable-64bit";;
        *)  EXTRA_CONFIGURE_FLAGS="$EXTRA_CONFIGURE_FLAGS --disable-64bit"
    esac

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
