package set summary "Network IDS, IPS, and security monitoring engine"
package set webpage "https://suricata-ids.org"
package set src.url "https://www.openinfosecfoundation.org/download/suricata-6.0.3.tar.gz"
package set src.sum "daf134bb2d7c980035e9ae60f7aaf313323a809340009f26e48110ccde81f602"
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
    sed_in_place "/host_triplet = /c host_triplet = $CARGO_TARGET" "$SOURCE_DIR/rust/Makefile.in" &&
    sed_in_place '/RUST_LDADD="${RUST_SURICATA_LIB}/i RUST_SURICATA_LIB=$(echo "$RUST_SURICATA_LIB" | sed "s/armv7a/armv7/")' "$SOURCE_DIR/configure" &&
    sed_in_place '/RUST_LDADD="${RUST_SURICATA_LIB}/a RUST_LDADD=$(echo "$RUST_LDADD" | sed "s/-lrt//")' "$SOURCE_DIR/configure" &&
    configure \
        --enable-pie \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes \
        ac_cv_lib_pthread_pthread_create=yes \
        ac_cv_lib_jansson_json_dump_callback=yes \
        ac_cv_lib_pcap_pcap_open_live=yes
}
