pkg_set summary "Packet(TCP/IP) Capture libray"
pkg_set webpage "https://www.tcpdump.org"
pkg_set git.url "https://github.com/the-tcpdump-group/libpcap.git"
pkg_set src.url "https://www.tcpdump.org/release/libpcap-1.10.1.tar.gz"
pkg_set src.sha "ed285f4accaf05344f90975757b3dbfe772ba41d1c401c2648b7fa45b711bdd4"
pkg_set license "BSD-3-Clause"
pkg_set dep.cmd "flex bison"
pkg_set dep.pkg "openssl"
pkg_set bsystem "cmake"

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
