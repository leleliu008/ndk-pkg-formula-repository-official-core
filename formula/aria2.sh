package set summary "Download with resuming and segmented downloading"
package set webpage "https://aria2.github.io"
package set src.url "https://github.com/aria2/aria2/releases/download/release-1.36.0/aria2-1.36.0.tar.xz"
package set src.sum "58d1e7608c12404f0229a3d9a4953d0d00c18040504498b483305bcb3de907a5"
package set license "GPL-2.0-or-later"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "zlib openssl libssh2 libxml2"
package set ldflags "-lz -lm -lxml2 -liconv -lssl -lcrypto -lssh2"

build() {
    configure --enable-libaria2
}
