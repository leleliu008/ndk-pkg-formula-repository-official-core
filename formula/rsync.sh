pkg_set summary "Utility that provides fast incremental file transfer"
pkg_set webpage "https://rsync.samba.org"
pkg_set git.url "https://github.com/WayneD/rsync.git"
pkg_set src.url "https://rsync.samba.org/ftp/rsync/rsync-3.2.4.tar.gz"
pkg_set src.sha "6f761838d08052b0b6579cf7f6737d93e47f01f4da04c5d24d3447b7f2a5fad1"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "openssl popt lz4 zstd zlib xxhash libiconv"
pkg_set bsystem "configure"

build() {
    configure --disable-simd
}
