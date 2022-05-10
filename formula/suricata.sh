pkg_set summary "Network IDS, IPS, and security monitoring engine"
pkg_set webpage "https://suricata-ids.org"
pkg_set git.url "https://github.com/OISF/suricata.git"
pkg_set src.url "https://www.openinfosecfoundation.org/download/suricata-6.0.5.tar.gz"
pkg_set src.sha "0d4197047c84ba070dfc6b1d9f9ee92f52a71403bfac0e29b2554bb21fe00754"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure cargo"
pkg_set dep.pkg "jansson file libnet libpcap libyaml lz4 pcre libiconv libglob"
pkg_set ldflags "-lglob"

# void endgrent(void) __INTRODUCED_IN(26);
pkg_set sdk.api 26

prepare() {
    sed_in_place '/LIBS="-lpthread/d' configure
}

build() {
    sed_in_place "/host_triplet = /c host_triplet = $RUST_TARGET" "$PACKAGE_BSCRIPT_DIR/rust/Makefile.in" &&
    sed_in_place '/RUST_LDADD="${RUST_SURICATA_LIB}/i RUST_SURICATA_LIB=$(echo "$RUST_SURICATA_LIB" | sed "s/armv7a/armv7/")' "$PACKAGE_BSCRIPT_DIR/configure" &&
    sed_in_place '/RUST_LDADD="${RUST_SURICATA_LIB}/a RUST_LDADD=$(echo "$RUST_LDADD" | sed "s/-lrt//")' "$PACKAGE_BSCRIPT_DIR/configure" &&
    configure \
        --enable-pie \
        ac_cv_lib_pthread_pthread_create=yes \
        ac_cv_lib_jansson_json_dump_callback=yes \
        ac_cv_lib_pcap_pcap_open_live=yes
}
