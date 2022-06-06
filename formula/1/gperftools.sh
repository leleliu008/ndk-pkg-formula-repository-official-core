pkg_set summary "Multi-threaded malloc() and performance analysis tools"
pkg_set git.url "https://github.com/gperftools/gperftools.git"
#pkg_set src.url "https://github.com/gperftools/gperftools/releases/download/gperftools-2.9.1/gperftools-2.9.1.tar.gz"
#pkg_set src.sha "ea566e528605befb830671e359118c2da718f721c27225cbbc93858c7520fee3"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "xz libglob"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "autotools"

# grp.h: struct group* getgrent(void) __INTRODUCED_IN(26);
pkg_set sdk.api 26

prepare() {
    sed_in_place 's|ulong|unsigned long|g' src/base/linux_syscall_support.h
    run autoreconf -ivf
}

build() {
    configure --disable-libunwind
}
