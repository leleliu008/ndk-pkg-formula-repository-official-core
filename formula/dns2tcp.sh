package set summary "TCP over DNS tunnel"
package set webpage "https://packages.debian.org/sid/dns2tcp"
package set src.url "https://deb.debian.org/debian/pool/main/d/dns2tcp/dns2tcp_0.5.2.orig.tar.gz"
package set src.sum "ea9ef59002b86519a43fca320982ae971e2df54cdc54cdb35562c751704278d9"
package set license "GPL-2.0-or-later"
package set bsystem "configure"
package set binbstd "yes"

prepare() {
    # https://github.com/android/ndk/issues/1409
    sed_in_place 's|int debug;|int debug __attribute__((common));|' common/includes/debug.h
}
