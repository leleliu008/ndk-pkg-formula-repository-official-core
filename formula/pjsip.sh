package set summary "C library for multimedia protocols such as SIP, SDP, RTP and more"
package set webpage "https://www.pjsip.org/"
package set src.git "https://github.com/pjsip/pjproject.git"
package set src.url "https://github.com/pjsip/pjproject/archive/2.11.1.tar.gz"
package set src.sum "45f6604372df3f49293749cd7c0b42cb21c4fb666c66f8ed9765de004d1eae38"
package set license "GPL-2.0-or-later"
package set dep.pkg "openssl"
package set bsystem "configure"
package set binsrcd "yes"

build() {
    export LD="$CC"
    configure --disable-libwebrtc
}
