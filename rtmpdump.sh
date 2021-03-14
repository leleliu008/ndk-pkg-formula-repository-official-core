summary "Tool for downloading RTMP streaming media"
webpage "https://rtmpdump.mplayerhq.hu"
src_git "https://git.ffmpeg.org/rtmpdump.git"
src_url "https://deb.debian.org/debian/pool/main/r/rtmpdump/rtmpdump_2.4+20151223.gitfa8646d.1.orig.tar.gz"
src_sum "5c032f5c8cc2937eb55a81a94effdfed3b0a0304b6376147b86f951e225e3ab5"
version "2.4+20151223"
license "GPL-2.0-or-later"
bsystem "make"
depends "zlib openssl"

patches "https://raw.githubusercontent.com/Homebrew/formula-patches/85fa66a9/rtmpdump/openssl-1.1.diff" \
        "3c9167e642faa9a72c1789e7e0fb1ff66adb11d721da4bd92e648cb206c4a2bd"

build_in_sourced

prepare() {
    run install $(patches) . &&
    patch -p0 < openssl-1.1.diff 
}

build() {
    make clean   SYS=posix &&
    make         SYS=posix CC=$CC LD=$LD CRYPTO=OPENSSL OPT= THREADLIB_posix= XCFLAGS="'$CFLAGS $CPPFLAGS'" XLDFLAGS="'$LDFLAGS'" &&
    make install SYS=posix prefix="$ABI_INSTALL_DIR" mandir="$ABI_INSTALL_DIR/share/man"
}
