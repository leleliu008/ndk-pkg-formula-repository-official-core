summary  "Libraries for security-enabled client and server applications"
homepage "https://developer.mozilla.org/docs/NSS"
url      "https://ftp.mozilla.org/pub/security/nss/releases/NSS_3_58_RTM/src/nss-3.58.tar.gz"
sha256   "9f73cf789b5f109b978e5239551b609b0cafa88d18f0bc8ce3f976cb629353c0"
license  "MPL-2.0"
dependencies "nspr"

prepare() {
    cd nss &&
    SOURCE_DIR="$PWD"
    #sed_in_place '1a set -x' build.sh
}

build() {
    "$SOURCE_DIR/build.sh" \
        -DOS=android \
        -DSHARED_LIB_SUFFIX=.so \
        -c \
        -v \
        --opt \
        --target="$BUILD_FOR_ARCH" \
        --disable-tests \
        --with-nspr="$nspr_INCLUDE_DIR/nspr:$nspr_LIBRARY_DIR"
}

install_files() {
    mkdir -p $ABI_INSTALL_DIR/{bin,lib/pkgconfig,include/nss}            || return 1
    
    install -v -m755 Linux*/lib/*.so              $ABI_LIBRARY_DIR       || return 1
    install -v -m644 Linux*/lib/{*.chk,libcrmf.a} $ABI_LIBRARY_DIR       || return 1
    
    cp -v -RL {public,private}/nss/*              $ABI_INCLUDE_DIR/nss   || return 1
    chmod -v 644                                  $ABI_INCLUDE_DIR/nss/* || return 1
    
    install -v -m755 Linux*/bin/{certutil,pk12util} $ABI_INSTALL_DIR/bin || return 1
}

install_pc_file() {
    cat > "$ABI_PKG_CONFIG_DIR/nss.pc" <<EOF
prefix=$ABI_INSTALL_DIR
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include/nss

Name: NSS
Description: Mozilla Network Security Services
Version: $(version)
Requires: nspr >= 4.12
Libs: -L\${libdir} -lnss3 -lnssutil3 -lsmime3 -lssl3
Cflags: -I\${includedir}
EOF
}
