package set summary "Collection of Linux utilities"
package set git.url "https://github.com/karelzak/util-linux.git"
package set src.url "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.38/util-linux-2.38.tar.xz"
package set src.sum "6d111cbe4d55b336db2f1fbeffbc65b89908704c01136371d32aa9bec373eb64"
package set license "GPL-2.0-or-later"
package set dep.pkg "readline"
package set bsystem "configure"

build() {
    #export CPPFLAGS="$CPPFLAGS -D_PATH_VI=\\\"/usr/bin/vi\\\""
    configure \
        --without-python \
        --without-systemd \
        --with-ncursesw \
        --enable-widechar \
        --disable-all-programs \
        --enable-libuuid
}
