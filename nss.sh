summary="Libraries for security-enabled client and server applications"
homepage="https://developer.mozilla.org/docs/NSS"
url="https://ftp.mozilla.org/pub/security/nss/releases/NSS_3_57_RTM/src/nss-3.57.tar.gz"
sha256="55a86c01be860381d64bb4e5b94eb198df9b0f098a8af0e58c014df398bdc382"
license="MPL-2.0"
dependencies="nspr"

prepare() {
    cd nss
}

build() {
    make clean &&
    make \
        -C coreconf/nsinstall \
        USE_64=1 \
        OBJDIR_NAME=build \
        CC='/usr/bin/cc' \
        CFLAGS='-v' \
        LDFLAGS='-v' &&
    make \
        OBJDIR_NAME=build \
        OS_TARGET=Linux \
        CC="$CC" \
        CFLAGS="$CFLAGS -I$nspr_DIR_INCLUDE/nspr -L$nspr_DIR_LIB -l nspr4 -I$PWD/lib/util" \
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
        NSPR_INCLUDE_DIR="$nspr_DIR_INCLUDE/nspr" \
        NSPR_LIB_DIR="$nspr_DIR_LIB" &&
        install_files &&
        install_pc_file
}

install_files() {
    mkdir -p $DIR_INSTALL_PREFIX/{bin,lib/pkgconfig,include/nss}                    || return 1
    
    install -v -m755 Linux*/lib/*.so              $DIR_INSTALL_PREFIX/lib           || return 1
    install -v -m644 Linux*/lib/{*.chk,libcrmf.a} $DIR_INSTALL_PREFIX/lib           || return 1
    
    cp -v -RL {public,private}/nss/*              $DIR_INSTALL_PREFIX/include/nss   || return 1
    chmod -v 644                                  $DIR_INSTALL_PREFIX/include/nss/* || return 1
    
    install -v -m755 Linux*/bin/{certutil,pk12util} $DIR_INSTALL_PREFIX/bin         || return 1
}

install_pc_file() {
    cat > $nspr_DIR_LIB/pkgconfig/nss.pc <<EOF
prefix=${PREFIX}
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
