summary "High-performance, high-quality MPEG-4 video library"
webpage "https://www.xvid.com"
src_url "https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.bz2"
src_sum "aeeaae952d4db395249839a3bd03841d6844843f5a4f84c271ff88f7aa1acff7"
license "GPL-2.0"
bsystem "configure"
sourced "build/generic"

build_in_sourced

build() {
    configure \
        --disable-idebug \
        --disable-iprofile \
        --disable-gnuprofile \
        --enable-assembly \
        --enable-pthread &&
    install_pc_file 'xvidcore' <<EOF
prefix=$ABI_INSTALL_DIR
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: xvidcore
URL: $(webpage)
Description: $(summary)
Version: $(version)
Libs: -L\${libdir} -lxvidcore
Cflags: -I\${includedir}
EOF
}
