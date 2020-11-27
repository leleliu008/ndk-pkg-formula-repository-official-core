summary  "Network IDS, IPS, and security monitoring engine"
homepage "https://suricata-ids.org"
url      "https://www.openinfosecfoundation.org/download/suricata-5.0.3.tar.gz"
sha256   "34413ecdad2ff2452526dbcd22f1279afd0935151916c0ff9cface4b0b5665db"
license  "GPL-2.0"
dependencies "jansson file libnet libpcap libyaml lz4 pcre"

build() {
    configure \
        --enable-pie \
        ac_cv_lib_pthread_pthread_create=yes \
        ac_cv_lib_jansson_json_dump_callback=yes \
        ac_cv_lib_pcap_pcap_open_live=yes
}
