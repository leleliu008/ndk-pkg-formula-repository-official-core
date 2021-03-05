summary "General-purpose data compression with high compression ratio"
webpage "https://tukaani.org/xz"
src_url "https://tukaani.org/xz/xz-5.2.5.tar.gz"
src_sum "f6f4910fd033078738bd82bfba4f49219d03b17eb0794eb91efbae419f4aba10"
bsystem "configure"

build() {
    configure \
        --disable-external-sha256 \
        --disable-werror \
        --enable-assembler \
        --enable-threads=posix
}
