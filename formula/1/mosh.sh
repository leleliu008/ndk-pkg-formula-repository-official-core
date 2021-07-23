package set summary "Remote terminal application"
package set webpage "https://mosh.org"
package set src.git "https://github.com/mobile-shell/mosh.git"
package set src.url "https://mosh.org/mosh-1.3.2.tar.gz"
package set src.sum "da600573dfa827d88ce114e0fed30210689381bbdcff543c931e4d6a2e851216"
package set license "GPL-3.0-or-later"
package set bsystem "configure"
package set dep.cmd "pkg-config"
package set dep.pkg "zlib openssl ncurses protobuf"

build() {
    configure --with-ncurses
}
