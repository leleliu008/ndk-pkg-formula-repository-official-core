pkg_set summary "Library for manipulating pipelines of subprocesses in a flexible and convenient way"
pkg_set webpage "http://libpipeline.nongnu.org"
pkg_set src.url "http://download.savannah.nongnu.org/releases/libpipeline/libpipeline-1.5.6.tar.gz"
pkg_set src.sha "60fbb9e7dc398528e5f3a776af57bb28ca3fe5d9f0cd8a961ac6cebfe6e9b797"
pkg_set license "GPL-3.0-or-later"
pkg_set bsystem "configure"

build() {
    configure \
        --enable-threads=posix \
        --enable-socketpair-pipe
}
