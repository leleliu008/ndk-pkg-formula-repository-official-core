package set summary "Utility that provides fast incremental file transfer"
package set webpage "https://rsync.samba.org"
package set git.url "https://github.com/WayneD/rsync.git"
package set src.url "https://rsync.samba.org/ftp/rsync/rsync-3.2.4.tar.gz"
package set src.sum "6f761838d08052b0b6579cf7f6737d93e47f01f4da04c5d24d3447b7f2a5fad1"
package set license "GPL-3.0"
package set dep.pkg "openssl popt lz4 zstd zlib xxhash libiconv"
package set bsystem "configure"

build() {
    configure --disable-simd
}
