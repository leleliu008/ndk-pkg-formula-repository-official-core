package set summary "Packet(TCP/IP) Capture libray"
package set webpage "https://www.tcpdump.org"
package set src.url "https://www.tcpdump.org/release/libpcap-1.9.1.tar.gz"
package set src.sum "635237637c5b619bcceba91900666b64d56ecb7be63f298f601ec786ce087094"
package set bsystem "cmake"
package set dep.cmd "flex bison"

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
