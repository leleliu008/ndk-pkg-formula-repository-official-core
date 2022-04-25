pkg_set summary "CD/DVD/Blu-ray premastering and recording software"
pkg_set webpage "http://cdrecord.org/"
pkg_set src.url "https://downloads.sourceforge.net/project/cdrtools/alpha/cdrtools-3.02a09.tar.gz"
pkg_set src.sha "c7e4f732fb299e9b5d836629dadf5512aa5e6a5624ff438ceb1d056f4dcb07c2"
pkg_set dep.cmd "smake"

pkg_set binbstd 'yes'

build() {
    export SYSROOT
    export CONFIG_RMTDEBUG=true
    export CONFIG_RMTCALL=""
    export CONFIG_RMTHOST=NONE
    
    smakew ARCH="$TARGET_OS_ARCH" OSNAME=linux CCOM=clang CC="$CC" &&
    smakew install INS_BASE="$TARGET_INSTALL_DIR"
}
