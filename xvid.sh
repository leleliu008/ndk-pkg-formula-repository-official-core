package set summary "High-performance, high-quality MPEG-4 video library"
package set webpage "https://www.xvid.com"
package set src.url "https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.bz2"
package set src.sum "aeeaae952d4db395249839a3bd03841d6844843f5a4f84c271ff88f7aa1acff7"
package set license "GPL-2.0"
package set bsystem "configure"
package set sourced "build/generic"

package set binsrcd true

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
URL: ${PACKAGE_WEBPAGE}
Description: ${PACKAGE_SUMMARY}
Version: ${PACKAGE_VERSION}
Libs: -L\${libdir} -lxvidcore
Cflags: -I\${includedir}
EOF
}
