package set summary "Collection of Linux utilities"
package set git.url "https://github.com/karelzak/util-linux.git"
package set src.url "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.37/util-linux-2.37.3.tar.xz"
package set src.sum "590c592e58cd6bf38519cb467af05ce6a1ab18040e3e3418f24bcfb2f55f9776"
package set license "GPL-2.0"
package set dep.pkg "readline"
package set bsystem "configure"

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
