pkg_set summary "Tool for downloading RTMP streaming media"
pkg_set webpage "https://rtmpdump.mplayerhq.hu"

pkg_set git.url "https://git.ffmpeg.org/rtmpdump.git"

pkg_set src.url "https://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz"
pkg_set src.sha "5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5"

pkg_set fix.url "https://raw.githubusercontent.com/Homebrew/formula-patches/85fa66a9/rtmpdump/openssl-1.1.diff"
pkg_set fix.sha "3c9167e642faa9a72c1789e7e0fb1ff66adb11d721da4bd92e648cb206c4a2bd"

pkg_set version "2.4+20151223"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "make"
pkg_set dep.pkg "zlib openssl"
pkg_set binbstd 'yes'
pkg_set parallel no

prepare() {
    patch -p0 < $PACKAGE_FIX_PATH
}

build() {
    makew clean   SYS=posix &&
    makew         SYS=posix CC=$CC LD=$LD CRYPTO=OPENSSL OPT= THREADLIB_posix= XCFLAGS="'$CFLAGS $CPPFLAGS'" XLDFLAGS="'$LDFLAGS'" &&
    makew install SYS=posix prefix="$TARGET_INSTALL_DIR" mandir="$TARGET_INSTALL_DIR/share/man"
}
