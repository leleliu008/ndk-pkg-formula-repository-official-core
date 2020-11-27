summary  "Collection of Linux utilities"
homepage "https://github.com/karelzak/util-linux"
url      "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.36/util-linux-2.36.tar.xz"
sha256   "9e4b1c67eb13b9b67feb32ae1dc0d50e08ce9e5d82e1cccd0ee771ad2fa9e0b1"
license  "GPL-2.0"
dependencies "readline"

build() {
    export CPPFLAGS="$CPPFLAGS -D_PATH_VI=\\\"/usr/bin/vi\\\""
    configure \
        --without-python \
        --without-systemd \
        --with-ncursesw=no \
        --with-ncurses \
        --enable-widechar=no
}
