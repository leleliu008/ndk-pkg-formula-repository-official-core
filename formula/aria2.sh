pkg_set summary "Download with resuming and segmented downloading"
pkg_set webpage "https://aria2.github.io"
pkg_set src.url "https://github.com/aria2/aria2/releases/download/release-1.36.0/aria2-1.36.0.tar.xz"
pkg_set src.sha "58d1e7608c12404f0229a3d9a4953d0d00c18040504498b483305bcb3de907a5"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"
pkg_set dep.cmd "pkg-config"
pkg_set dep.pkg "zlib openssl libssh2 libxml2"
pkg_set ldflags "-lz -lm -lxml2 -liconv -lssl -lcrypto -lssh2"

build() {
    configure --enable-libaria2
}
