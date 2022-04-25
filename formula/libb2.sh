pkg_set summary "Secure hashing function"
pkg_set webpage "https://blake2.net"
pkg_set git.url "https://github.com/BLAKE2/libb2.git"
pkg_set src.url "https://github.com/BLAKE2/libb2/releases/download/v0.98.1/libb2-0.98.1.tar.gz"
pkg_set src.sha "53626fddce753c454a3fea581cbbc7fe9bbcf0bc70416d48fdbbf5d87ef6c72e"
pkg_set license "CC0-1.0"
pkg_set bsystem "configure"
pkg_set dep.cmd "autoconf automake>=1.16.0"

#https://github.com/quiet/quiet/issues/23
#https://github.com/jgaeddert/liquid-dsp/pull/62/files#diff-4bb328fbe3180ab54cff2f63f71c3a77
prepare() {
    sed_in_place '/AX_GCC_X86_CPUID(0x00000001)/a ecx=0\nedx=0\nif test "$ax_cv_gcc_x86_cpuid_0x00000001" != "unknown"; then' m4/ax_ext.m4 &&
    sed_in_place '/AC_CACHE_CHECK(\[whether mmx is supported\]/i fi' m4/ax_ext.m4
}

build() {
    configure \
        --disable-openmp \
        --disable-fat \
        --enable-native
}
