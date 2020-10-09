summary="a quick-n-dirty BSD licensed clone of backtrace facility found in the GNU libc"
homepage="https://github.com/resslinux/libexecinfo"
url="https://github.com/resslinux/libexecinfo/archive/v20180201.tar.gz"
version="2018.02.01"
sha256="f8014d48a1fe2a54ec49a9cc3d77e4664f754988ed9985146467487fa7c94459"

build() {
    make clean &&
    make install PREFIX="$DIR_INSTALL_PREFIX"
}
