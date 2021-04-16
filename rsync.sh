summary "Utility that provides fast incremental file transfer"
webpage "https://rsync.samba.org"
src_git "https://github.com/WayneD/rsync.git"
src_url "https://rsync.samba.org/ftp/rsync/rsync-3.2.3.tar.gz"
src_sum "becc3c504ceea499f4167a260040ccf4d9f2ef9499ad5683c179a697146ce50e"
license "GPL-3.0"
bsystem "configure"
depends "openssl popt lz4 zstd zlib xxhash libiconv"

build() {
    configure --disable-simd
}
