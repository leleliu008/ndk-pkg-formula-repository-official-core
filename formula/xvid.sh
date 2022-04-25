pkg_set summary "High-performance, high-quality MPEG-4 video library"
pkg_set webpage "https://www.xvid.com"
pkg_set src.url "https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.bz2"
pkg_set src.sha "aeeaae952d4db395249839a3bd03841d6844843f5a4f84c271ff88f7aa1acff7"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"
pkg_set bscript "build/generic"
pkg_set binbstd 'yes'

build() {
    configure \
        --disable-idebug \
        --disable-iprofile \
        --disable-gnuprofile \
        --disable-assembly \
        --enable-pthread \
        ac_cv_prog_ac_yasm=yasm &&
    install_pc_file 'xvidcore' <<EOF
prefix=$TARGET_INSTALL_DIR
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
