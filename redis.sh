package set summary "Persistent key-value database, with built-in net interface"
package set webpage "https://redis.io"
package set src.git "https://github.com/redis/redis.git"
package set src.url "https://download.redis.io/releases/redis-6.2.1.tar.gz"
package set src.sum "cd222505012cce20b25682fca931ec93bd21ae92cb4abfe742cf7b76aa907520"
package set license "BSD-3-Clause"
package set sourced "src"
package set bsystem "make"
package set dep.cmd "pkg-config"
package set dep.pkg "openssl libbthread"
package set ldflags "-lbthread"

build() {
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" CC="$CC" CFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS'" AR="$AR" RANLIB="$RANLIB" uname_S=Linux uname_M="$TARGET_OS_ARCH" BUILD_TLS=yes USE_JEMALLOC=no &&
    makew -C "$SOURCE_DIR" install PREFIX="$ABI_INSTALL_DIR"
}
