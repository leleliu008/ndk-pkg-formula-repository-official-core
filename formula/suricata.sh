package set summary "Network IDS, IPS, and security monitoring engine"
package set webpage "https://suricata-ids.org"
package set git.url "https://github.com/OISF/suricata.git"
package set src.url "https://www.openinfosecfoundation.org/download/suricata-6.0.4.tar.gz"
package set src.sum "a8f197e33d1678689ebbf7bc1abe84934c465d22c504c47c2c7e9b74aa042d0d"
package set license "GPL-2.0"
package set bsystem "configure cargo"
package set dep.pkg "jansson file libnet libpcap libyaml lz4 pcre libiconv libglob"
package set ldflags "-lglob"

# void endgrent(void) __INTRODUCED_IN(26);
package set sdk.api 26

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
