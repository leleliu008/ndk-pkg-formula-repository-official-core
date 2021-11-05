package set summary "Packet(TCP/IP) Capture libray"
package set webpage "https://www.tcpdump.org"
package set src.git "https://github.com/the-tcpdump-group/libpcap.git"
package set src.url "https://www.tcpdump.org/release/libpcap-1.10.1.tar.gz"
package set src.sum "ed285f4accaf05344f90975757b3dbfe772ba41d1c401c2648b7fa45b711bdd4"
package set dep.cmd "flex bison"
package set dep.pkg "openssl"
package set bsystem "cmake"

prepare() {
    sed_in_place '/Libs.private:/c Libs.private: -lssl -lcrypto' libpcap.pc.in
}

build() {
    cmakew \
        -DINET6=ON \
        -DENABLE_REMOTE=ON \
        -DBDEBUG=OFF \
        -DDISABLE_USB=OFF \
        -DDISABLE_SEPTEL=OFF \
        -DDISABLE_NETMAP=OFF \
        -DDISABLE_DBUS=OFF \
        -DDISABLE_BLUETOOTH=OFF \
        -DDISABLE_DAG=ON \
        -DDISABLE_TC=ON \
        -DDISABLE_SNF=ON
}
