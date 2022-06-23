pkg_set summary "Mozilla Network Security Services"
pkg_set webpage "https://developer.mozilla.org/docs/NSS"
pkg_set src.url "https://ftp.mozilla.org/pub/security/nss/releases/NSS_3_58_RTM/src/nss-3.58.tar.gz"
pkg_set src.sha "9f73cf789b5f109b978e5239551b609b0cafa88d18f0bc8ce3f976cb629353c0"
pkg_set license "MPL-2.0"
pkg_set dep.pkg "nspr"
pkg_set bscript "nss"

prepare() {
    :
    #sed_in_place '1a set -x' build.sh
}

build() {
    "$PACKAGE_INSTALLING_BST_DIR/build.sh" \
        -DOS=android \
        -DSHARED_LIB_SUFFIX=.so \
        -c \
        -v \
        --opt \
        --target="$TARGET_OS_ARCH" \
        --disable-tests \
        --with-nspr="$nspr_INCLUDE_DIR/nspr:$nspr_LIBRARY_DIR"
}

install_files() {
    mkdir -p $TARGET_INSTALL_DIR/{bin,lib/pkgconfig,include/nss}                      || return 1
    
    install -v -m755 Linux*/lib/*.so                $TARGET_INSTALL_DIR/lib           || return 1
    install -v -m644 Linux*/lib/{*.chk,libcrmf.a}   $TARGET_INSTALL_DIR/lib           || return 1
    
    cp -v -RL {public,private}/nss/*                $TARGET_INSTALL_DIR/include/nss   || return 1
    chmod -v 644                                    $TARGET_INSTALL_DIR/include/nss/* || return 1
    
    install -v -m755 Linux*/bin/{certutil,pk12util} $TARGET_INSTALL_DIR/bin           || return 1
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
