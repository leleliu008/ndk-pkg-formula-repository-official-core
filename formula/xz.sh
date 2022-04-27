pkg_set summary "General-purpose data compression with high compression ratio"
pkg_set webpage "https://tukaani.org/xz"
pkg_set git.url "https://github.com/xz-mirror/xz.git"
pkg_set src.url "https://downloads.sourceforge.net/project/lzmautils/xz-5.2.5.tar.gz"
pkg_set src.sha "f6f4910fd033078738bd82bfba4f49219d03b17eb0794eb91efbae419f4aba10"
pkg_set bsystem "configure"
pkg_set license "LGPL-2.1-or-later;COPYING.LGPLv2.1;https://raw.githubusercontent.com/xz-mirror/xz/master/COPYING.LGPLv2.1 GPL-2.0-or-later;COPYING.GPLv2;https://raw.githubusercontent.com/xz-mirror/xz/master/COPYING.GPLv2 GPL-3.0-or-later;COPYING.GPLv3;https://raw.githubusercontent.com/xz-mirror/xz/master/COPYING.GPLv3"
pkg_set developer "Lasse+Collin;lasse.collin@tukaani.org"

build() {
    configure \
        --disable-external-sha256 \
        --disable-werror \
        --enable-assembler \
        --enable-threads=posix
}
