summary="Libraries for security-enabled client and server applications"
homepage="https://developer.mozilla.org/docs/NSS"
url="https://ftp.mozilla.org/pub/security/nss/releases/NSS_3_57_RTM/src/nss-3.57.tar.gz"
sha256="55a86c01be860381d64bb4e5b94eb198df9b0f098a8af0e58c014df398bdc382"
license="MPL-2.0"
dependencies="nspr"

prepare() {
    cd nss &&
    SOURCE_DIR="$PWD" &&
    sed_in_place 's/$(AR)/$(AR) rs $@/g' coreconf/rules.mk &&
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

build() {
    cd "$SOURCE_DIR" &&
    make clean &&
    make \
        -C coreconf/nsinstall \
        USE_64=1 \
        OBJDIR_NAME=build \
        CC="$CC_FOR_BUILD" \
        CFLAGS='-v' \
        LDFLAGS='-v' &&
    make \
        OBJDIR_NAME=build \
        OS_TARGET=Linux \
        CPU_ARCH="$BUILD_FOR_ARCH" \
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
        install_pc_file
}

install_files() {
    mkdir -p $ABI_INSTALL_DIR/{bin,lib/pkgconfig,include/nss}                    || return 1
    
    install -v -m755 Linux*/lib/*.so              $ABI_INSTALL_DIR/lib           || return 1
    install -v -m644 Linux*/lib/{*.chk,libcrmf.a} $ABI_INSTALL_DIR/lib           || return 1
    
    cp -v -RL {public,private}/nss/*              $ABI_INSTALL_DIR/include/nss   || return 1
    chmod -v 644                                  $ABI_INSTALL_DIR/include/nss/* || return 1
    
    install -v -m755 Linux*/bin/{certutil,pk12util} $ABI_INSTALL_DIR/bin         || return 1
}

install_pc_file() {
    cat > "$nspr_LIBRARY_DIR/pkgconfig/nss.pc" <<EOF
prefix=$ABI_INSTALL_DIR
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include/nss

Name: NSS
Description: Mozilla Network Security Services
Version: 3.57
Requires: nspr >= 4.12
Libs: -L\${libdir} -lnss3 -lnssutil3 -lsmime3 -lssl3
Cflags: -I\${includedir}
EOF
}
