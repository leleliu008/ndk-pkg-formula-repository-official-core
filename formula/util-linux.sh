package set summary "Collection of Linux utilities"
package set git.url "https://github.com/karelzak/util-linux.git"
package set src.url "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.37/util-linux-2.37.4.tar.xz"
package set src.sum "634e6916ad913366c3536b6468e7844769549b99a7b2bf80314de78ab5655b83"
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
