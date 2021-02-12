summary "Download with resuming and segmented downloading"
webpage "https://aria2.github.io"
src_url "https://github.com/aria2/aria2/releases/download/release-1.35.0/aria2-1.35.0.tar.xz"
src_sum "1e2b7fd08d6af228856e51c07173cfcf987528f1ac97e04c5af4a47642617dfd"
license "GPL-2.0-or-later"
require "pkg-config make"
depends "zlib openssl libssh2 libxml2"
ldflags "-lz -lm -lxml2 -liconv -lssl -lcrypto -lssh2"

build() {
    configure --enable-libaria2
}
