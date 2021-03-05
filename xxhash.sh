summary "Extremely fast non-cryptographic hash algorithm"
webpage "https://github.com/Cyan4973/xxHash"
src_url "https://github.com/Cyan4973/xxHash/archive/v0.8.0.tar.gz"
src_sum "7054c3ebd169c97b64a92d7b994ab63c70dd53a06974f1f630ab782c28db0f4f"
license "BSD-2-Clause"
bsystem "make"

build() {
    make -C "$SOURCE_DIR" clean   UNAME=Linux &&
    make -C "$SOURCE_DIR" install UNAME=Linux PREFIX="$ABI_INSTALL_DIR" CC="$CC" CFLAGS="'$CFLAGS'" CPPFLAGS="'$CPPFLAGS'" LDFLAGS="'$LDFLAGS -shared'" AR="$AR"
}
