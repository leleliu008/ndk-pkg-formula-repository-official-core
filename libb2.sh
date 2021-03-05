summary "Secure hashing function"
webpage "https://blake2.net"
src_url "https://github.com/BLAKE2/libb2/releases/download/v0.98.1/libb2-0.98.1.tar.gz"
src_sum "53626fddce753c454a3fea581cbbc7fe9bbcf0bc70416d48fdbbf5d87ef6c72e"
bsystem "configure"

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
