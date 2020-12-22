summary  "crypt(3) implementation"
homepage "http://michael.dipperstein.com/crypt"
url      "http://michael.dipperstein.com/crypt/crypt3.c"
sha256   "75b16b6ef7f1c0c7c4172ed346b2b91b6f1be72c824b6671a059de2b2da554ff"
version  "1"

build() {
    eeval "$CC $CFLAGS $CPPFLAGS -c -o crypt.o $SOURCE_DIR/libcrypt-$(version).c" &&
    eeval "$CC $LDFLAGS -shared -o libcrypt.so crypt.o" &&
    eeval "$AR rs libcrypt.a crypt.o" &&
    echo "char* crypt(char* key, char* salt);" > crypt.h &&
    install_files crypt.h libcrypt.a libcrypt.so
}
