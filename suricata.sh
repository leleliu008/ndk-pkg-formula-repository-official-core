summary "Network IDS, IPS, and security monitoring engine"
webpage "https://suricata-ids.org"
src_url "https://www.openinfosecfoundation.org/download/suricata-5.0.3.tar.gz"
src_sum "34413ecdad2ff2452526dbcd22f1279afd0935151916c0ff9cface4b0b5665db"
license "GPL-2.0"
require "rustup cargo make"
depends "jansson file libnet libpcap libyaml lz4 pcre libiconv libglob"
ldfalgs "-lglob"

# void endgrent(void) __INTRODUCED_IN(26);
sdk_api 26

prepare() {
    sed_in_place '/LIBS="-lpthread/d' configure
}

build() {
    RUST_TARGET=$(echo "$BUILD_FOR_TARGET" | sed 's/armv7a/armv7/')
    rustup target add "$RUST_TARGET" &&
    sed_in_place "/host_triplet = /c host_triplet = $RUST_TARGET" "$SOURCE_DIR/rust/Makefile.in" &&
    sed_in_place "/RUST_SURICATA_LIB =/RUST_SURICATA_LIB = ../rust/target/$RUST_TARGET/release/libsuricata.a" "$SOURCE_DIR/src/Makefile.in" &&
    configure \
        --enable-pie \
        ac_cv_lib_pthread_pthread_create=yes \
        ac_cv_lib_jansson_json_dump_callback=yes \
        ac_cv_lib_pcap_pcap_open_live=yes
}
