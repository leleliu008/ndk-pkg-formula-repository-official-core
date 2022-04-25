pkg_set summary "C library for multimedia protocols such as SIP, SDP, RTP and more"
pkg_set webpage "https://www.pjsip.org/"
pkg_set git.url "https://github.com/pjsip/pjproject.git"
pkg_set src.url "https://github.com/pjsip/pjproject/archive/2.11.1.tar.gz"
pkg_set src.sha "45f6604372df3f49293749cd7c0b42cb21c4fb666c66f8ed9765de004d1eae38"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "openssl"
pkg_set bsystem "configure"
pkg_set binbstd "yes"

build() {
    export LD="$CC"
    configure --disable-libwebrtc
}
