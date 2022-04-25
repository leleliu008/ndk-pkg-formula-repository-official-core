pkg_set summary "Create beautiful image of your source code"
pkg_set git.url "https://github.com/Aloxaf/silicon.git"
pkg_set src.url "https://github.com/Aloxaf/silicon/archive/v0.4.3.tar.gz"
pkg_set src.sha "68d64ade34ac571cf2d092f9a6f124e2c7d0441a91e3ba00ca1c8edcdd008630"
pkg_set license "MIT"
pkg_set bsystem "cargo cmake"

build() {
    # https://github.com/servo/libfontconfig/issues/62
    if [ "$TARGET_OS_ABI" = 'armeabi-v7a' ] ; then
        run install -d "$TARGET_INSTALL_DIR/bin"
    else
        cargow install
    fi
}
