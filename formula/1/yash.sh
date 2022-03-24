package set summary "Yet another shell: a POSIX-compliant command-line shell"
package set webpage "https://yash.osdn.jp/"
package set git.url "https://github.com/magicant/yash.git"
package set src.url "https://github.com/magicant/yash/releases/download/2.51/yash-2.51.tar.xz"
package set src.sum "6f15e68eeb63fd42e91c3ce75eccf325f2c938fa1dc248e7213af37c043aeaf8"
package set license "GPL-2.0-or-later"

build() {
    "$PACKAGE_BSCRIPT_DIR"/configure \
        --prefix="$TARGET_INSTALL_DIR" \
        --enable-array \
        --enable-dirstack \
        --enable-help \
        --enable-history \
        --enable-lineedit \
        --enable-printf \
        --enable-socket \
        --enable-test \
        --enable-ulimit
}
