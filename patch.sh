summary  "Apply a diff file to an original"
homepage "https://savannah.gnu.org/projects/patch"
url      "https://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz"
sha256   "ac610bda97abe0d9f6b7c963255a11dcb196c25e337c61f94e4778d632f1d8fd"
license  "GPL-3.0"

build() {
    configure \
        --enable-xattr \
        --disable-gcc-warnings
}
