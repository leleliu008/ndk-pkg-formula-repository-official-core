pkg_set summary "Mozilla Network Security Services"
pkg_set webpage "https://developer.mozilla.org/docs/NSS"
pkg_set src.url "https://ftp.mozilla.org/pub/security/nss/releases/NSS_3_57_RTM/src/nss-3.57.tar.gz"
pkg_set src.sha "55a86c01be860381d64bb4e5b94eb198df9b0f098a8af0e58c014df398bdc382"
pkg_set license "MPL-2.0"
pkg_set dep.pkg "nspr"
pkg_set bscript "nss"

prepare() {
    sed_in_place 's/$(AR)/$(AR) rs $@/g' coreconf/rules.mk &&
    sed_in_place 's/-lpthread//g'        coreconf/Linux.mk &&
    sed_in_place 's/-lpthread//g'        lib/softoken/config.mk &&
    sed_in_place 's/-lpthreads//g'       lib/sqlite/config.mk &&
    sed_in_place 's/-lpthread//g'        gtests/google_test/gtest/m4/acx_pthread.m4 &&
    unset XCFLAGS &&
    prepare_includes "$PWD/lib" 
}

prepare_includes() {
    for item in $1/*
    do
        if [ -d "$item" ] ; then
            case $item in
                */mozpkix);;
                *)
                    XCFLAGS="$XCFLAGS -I$item"
                    prepare_includes $item
            esac
        fi
    done
}

pkg_set binbstd 'yes'

build() {
    makew clean &&
    makew \
        -C coreconf/nsinstall \
        USE_64=1 \
        OBJDIR_NAME=build \
        CC="$CC_FOR_BUILD" \
        CFLAGS='-v' \
        LDFLAGS='-v' &&
    makew \
        OBJDIR_NAME=build \
        OS_TARGET=Linux \
        CPU_ARCH="$TARGET_OS_ARCH" \
        CC="$CC $CFLAGS $XCFLAGS -I$nspr_INCLUDE_DIR/nspr -L$nspr_LIBRARY_DIR -l nspr4 -D__EMX__=1 -DMAXNAMLEN=50 -DMAXPATHLEN=200" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" \
        BUILD_OPT=1 \
        NSS_ENABLE_WERROR=0 \
        USE_64=1 \
        USE_SYSTEM_ZLIB=1 \
        NSS_USE_SYSTEM_SQLITE=0 \
        NSPR_INCLUDE_DIR="$nspr_INCLUDE_DIR/nspr" \
        NSPR_LIB_DIR="$nspr_LIBRARY_DIR" &&
        install_files &&
        install_pc_files
}

install_files() {
    mkdir -p $TARGET_INSTALL_DIR/{bin,lib/pkgconfig,include/nss}              || return 1
    
    install -v -m755 Linux*/lib/*.so                $TARGET_INSTALL_DIR/lib   || return 1
    install -v -m644 Linux*/lib/{*.chk,libcrmf.a}   $TARGET_INSTALL_DIR/lib   || return 1
    
    cp -v -RL {public,private}/nss/*                $TARGET_INSTALL_DIR/include/nss   || return 1
    chmod -v 644                                    $TARGET_INSTALL_DIR/include/nss/* || return 1
    
    install -v -m755 Linux*/bin/{certutil,pk12util} $TARGET_INSTALL_DIR/bin   || return 1
}

install_pc_files() {
    install_pc_file 'nss' <<EOF
prefix=$TARGET_INSTALL_DIR
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include/nss

Name: NSS
Description: ${PACKAGE_SUMMARY}
Version: ${PACKAGE_VERSION}
Requires: nspr >= 4.12
Libs: -L\${libdir} -lnss3 -lnssutil3 -lsmime3 -lssl3
Cflags: -I\${includedir}
EOF
}
