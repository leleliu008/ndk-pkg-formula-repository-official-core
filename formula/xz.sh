package set summary "General-purpose data compression with high compression ratio"
package set webpage "https://tukaani.org/xz"
package set git.url "https://github.com/xz-mirror/xz.git"
package set src.url "https://downloads.sourceforge.net/project/lzmautils/xz-5.2.5.tar.gz"
package set src.sum "f6f4910fd033078738bd82bfba4f49219d03b17eb0794eb91efbae419f4aba10"
package set bsystem "configure"

build() {
    configure \
        --disable-external-sha256 \
        --disable-werror \
        --enable-assembler \
        --enable-threads=posix
}
