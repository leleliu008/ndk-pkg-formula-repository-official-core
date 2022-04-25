pkg_set summary "Library for decimal floating point arithmetic"
pkg_set webpage "https://www.bytereef.org/mpdecimal/"
pkg_set src.url "https://www.bytereef.org/software/mpdecimal/releases/mpdecimal-2.5.1.tar.gz"
pkg_set src.sha "9f9cd4c041f99b5c49ffb7b59d9f12d95b683d88585608aa56a6307667b2b21f"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "configure"
pkg_set binbstd "yes"

prepare() {
    sed_in_place 's|ac_sys_system=`uname -s`|ac_sys_system=$host|' configure
}

build() {
    export LD="$CC"
    configure
}
