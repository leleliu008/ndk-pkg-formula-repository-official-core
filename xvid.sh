summary  "High-performance, high-quality MPEG-4 video library"
homepage "https://www.xvid.com"
url      "https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.bz2"
sha256   "aeeaae952d4db395249839a3bd03841d6844843f5a4f84c271ff88f7aa1acff7"
license  "GPL-2.0"

prepare() {
    SOURCE_DIR="$WORKING_DIR/build/generic"
}

build() {
    cd "$SOURCE_DIR" &&
    configure \
        --disable-idebug \
        --disable-iprofile \
        --disable-gnuprofile \
        --enable-assembly \
        --enable-pthread &&
    gen_pc_files
}

gen_pc_files() {
    mkdir "$ABI_PKG_CONFIG_DIR" &&
    cat > "$ABI_PKG_CONFIG_DIR/xvidcore.pc" <<EOF
prefix=$ABI_INSTALL_DIR
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: xvidcore
URL: https://www.xvid.com/
Description: High-performance, high-quality MPEG-4 video library
Version: $(version)
Libs: -L\${libdir} -lxvidcore
Cflags: -I\${includedir}
EOF
}
