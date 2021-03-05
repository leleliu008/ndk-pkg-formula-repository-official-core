summary "Apply a diff file to an original"
webpage "https://savannah.gnu.org/projects/patch"
src_url "https://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz"
src_sum "ac610bda97abe0d9f6b7c963255a11dcb196c25e337c61f94e4778d632f1d8fd"
license "GPL-3.0"
bsystem "configure"

build() {
    configure \
        --enable-xattr \
        --disable-gcc-warnings
}
