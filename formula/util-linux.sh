package set summary "Collection of Linux utilities"
package set git.url "https://github.com/karelzak/util-linux.git"
package set src.url "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.37/util-linux-2.37.2.tar.xz"
package set src.sum "6a0764c1aae7fb607ef8a6dd2c0f6c47d5e5fd27aa08820abaad9ec14e28e9d9"
package set license "GPL-2.0"
package set bsystem "configure"
package set dep.pkg "readline"

build() {
    export CPPFLAGS="$CPPFLAGS -D_PATH_VI=\\\"/usr/bin/vi\\\""
    configure \
        --without-python \
        --without-systemd \
        --with-ncursesw \
        --enable-widechar \
        --disable-all-programs \
        --enable-libuuid
}
