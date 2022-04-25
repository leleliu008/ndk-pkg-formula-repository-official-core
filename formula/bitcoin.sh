pkg_set summary "Decentralized, peer to peer payment network"
pkg_set webpage "https://bitcoincore.org/"
pkg_set git.url "https://github.com/bitcoin/bitcoin.git"
pkg_set src.url "https://bitcoincore.org/bin/bitcoin-core-22.0/bitcoin-22.0.tar.gz"
pkg_set src.sha "d0e9d089b57048b1555efa7cd5a63a7ed042482045f6f33402b1df425bf9613b"
pkg_set license "MIT"
pkg_set dep.pkg "libevent libzmq boost"
pkg_set dep.cmd "libtoolize:glibtoolize pkg-config"
pkg_set bsystem "autotools"

build() {
    # error: "Cannot compile without assertions!"
    export CFLAGS="$(printf '%s\n' "$CFLAGS" | sed 's|-DNDEBUG||g')"
    export CXXFLAGS="$(printf '%s\n' "$CXXFLAGS" | sed 's|-DNDEBUG||g')"

    export ac_cv_path_ac_pt_AR="$TOOLCHAIN_BIND/$AR"
    export ac_cv_path_ac_pt_RANLIB="$TOOLCHAIN_BIND/$RANLIB"
    export ac_cv_path_ac_pt_OBJCOPY="$TOOLCHAIN_BIND/$OBJCOPY"
    export ac_cv_path_ac_pt_STRIP="$TOOLCHAIN_BIND/$STRIP"

    configure \
        --with-boost="$boost_INSTALL_DIR" \
        --with-daemon \
        --without-gui \
        --without-bdb \
        --disable-tests

        #--without-libs
}
