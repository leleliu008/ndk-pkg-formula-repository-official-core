summary "Utility to determine file types"
webpage "https://www.darwinsys.com/file"
src_git "https://github.com/file/file"
src_url "https://astron.com/pub/file/file-5.39.tar.gz"
src_sum "f05d286a76d9556243d0cb05814929c2ecf3a5ba07963f8f70bfaaa70517fad1"
require "make"

prepare() {
    info "install file local."
    PREFIX=`pwd`/out &&
    ./configure --prefix="$PREFIX" &&
    make clean &&
    make install &&
    make distclean &&
    export PATH=$PREFIX/bin:$PATH &&
    export FILE_COMPILE=$PREFIX/bin/file
}

build() {
    configure \
        --enable-zlib \
        --disable-bzlib \
        --disable-xzlib
}
