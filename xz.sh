summary="General-purpose data compression with high compression ratio"
homepage="https://tukaani.org/xz"
url="https://tukaani.org/xz/xz-5.2.5.tar.gz"
sha256="f6f4910fd033078738bd82bfba4f49219d03b17eb0794eb91efbae419f4aba10"

build() {
    configure \
        --disable-external-sha256 \
        --disable-werror \
        --enable-assembler \
        --enable-threads=posix
}
