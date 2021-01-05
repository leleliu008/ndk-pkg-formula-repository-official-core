summary "CD/DVD/Blu-ray premastering and recording software"
webpage "http://cdrecord.org/"
src_url "https://downloads.sourceforge.net/project/cdrtools/alpha/cdrtools-3.02a09.tar.gz"
src_sum "c7e4f732fb299e9b5d836629dadf5512aa5e6a5624ff438ceb1d056f4dcb07c2"
require "make"

build_in_sourced

build() {
    export SYSROOT
    export CONFIG_RMTDEBUG=true
    export CONFIG_RMTCALL=""
    export CONFIG_RMTHOST=NONE
    
    $MAKE ARCH="$BUILD_FOR_ARCH" OSNAME=linux CCOM=clang CC="$CC" &&
    $MAKE install INS_BASE="$ABI_INSTALL_DIR"
}
