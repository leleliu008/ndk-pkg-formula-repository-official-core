package set summary "C library for reading, creating, and modifying zip archives"
package set webpage "https://libzip.org"
package set git.url "https://github.com/nih-at/libzip.git"
package set src.url "https://libzip.org/download/libzip-1.8.0.tar.xz"
package set src.sum "f0763bda24ba947e80430be787c4b068d8b6aa6027a26a19923f0acfa3dac97e"
package set dep.pkg "zstd bzip2"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_ZSTD=ON \
        -DENABLE_LZMA=ON \
        -DENABLE_BZIP2=ON \
        -DENABLE_GNUTLS=OFF \
        -DENABLE_OPENSSL=OFF \
        -DENABLE_MBEDTLS=OFF \
        -DENABLE_COMMONCRYPTO=OFF \
        -DENABLE_WINDOWS_CRYPTO=OFF \
        -DBUILD_DOC=OFF \
        -DBUILD_TOOLS=OFF \
        -DBUILD_REGRESS=OFF \
        -DBUILD_EXAMPLES=OFF
}
