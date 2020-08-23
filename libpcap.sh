summary="Packet(TCP/IP) Capture libray"
homepage="https://www.tcpdump.org"
url="https://www.tcpdump.org/release/libpcap-1.9.1.tar.gz"
sha256="635237637c5b619bcceba91900666b64d56ecb7be63f298f601ec786ce087094"

build() {
    cmake \
    -DCMAKE_TOOLCHAIN_FILE="$CMAKE_TOOLCHAIN_FILE" \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$DIR_INSTALL_PREFIX" \
    -DBUILD_SHARED_LIBS=ON \
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
    -DDISABLE_SNF=ON \
    -DANDROID_TOOLCHAIN=clang \
    -DANDROID_ABI="$TARGET_ABI" \
    -DANDROID_PLATFORM="$TARGET_API" \
    -G "Unix Makefiles" \
    -Wno-dev \
    -S . \
    -B "$DIR_BUILD" &&
    make --directory="$DIR_BUILD" -j$(nproc) install
}
