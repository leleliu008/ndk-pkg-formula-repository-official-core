summary "Implementations for atomic memory update operations"
webpage "https://github.com/ivmai/libatomic_ops"
src_url "https://github.com/ivmai/libatomic_ops/releases/download/v7.6.10/libatomic_ops-7.6.10.tar.gz"
src_sum "587edf60817f56daf1e1ab38a4b3c729b8e846ff67b4f62a6157183708f099af"
license "GPL-2.0"
bsystem "configure"

build() {
    configure \
        --disable-docs \
        --disable-gcov \
        --disable-werror \
        --disable-assertions
}
