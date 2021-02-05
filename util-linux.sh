summary "Collection of Linux utilities"
webpage "https://github.com/karelzak/util-linux"
src_url "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.36/util-linux-2.36.tar.xz"
src_sum "9e4b1c67eb13b9b67feb32ae1dc0d50e08ce9e5d82e1cccd0ee771ad2fa9e0b1"
license "GPL-2.0"
depends "readline"

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
