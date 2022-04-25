pkg_set summary "Implementations for atomic memory update operations"
pkg_set git.url "https://github.com/ivmai/libatomic_ops.git"
pkg_set src.url "https://github.com/ivmai/libatomic_ops/releases/download/v7.6.12/libatomic_ops-7.6.12.tar.gz"
pkg_set src.sha "f0ab566e25fce08b560e1feab6a3db01db4a38e5bc687804334ef3920c549f3e"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"

build() {
    configure \
        --disable-docs \
        --disable-gcov \
        --disable-werror \
        --disable-assertions
}
