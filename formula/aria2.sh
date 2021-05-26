package set summary "Download with resuming and segmented downloading"
package set webpage "https://aria2.github.io"
package set src.url "https://github.com/aria2/aria2/releases/download/release-1.35.0/aria2-1.35.0.tar.xz"
package set src.sum "1e2b7fd08d6af228856e51c07173cfcf987528f1ac97e04c5af4a47642617dfd"
package set license "GPL-2.0-or-later"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "zlib openssl libssh2 libxml2"
package set ldflags "-lz -lm -lxml2 -liconv -lssl -lcrypto -lssh2"

build() {
    configure --enable-libaria2
}
