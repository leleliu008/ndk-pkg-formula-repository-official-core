pkg_set summary "C library of Git core methods that is re-entrant and linkable"
pkg_set webpage "https://libgit2.github.com"
pkg_set git.url "https://github.com/libgit2/libgit2.git"
pkg_set src.url "https://github.com/libgit2/libgit2/archive/v1.3.0.tar.gz"
pkg_set src.sha "192eeff84596ff09efb6b01835a066f2df7cd7985e0991c79595688e6b36444e"
pkg_set license "GPL-2.0-only"
pkg_set dep.pkg "libssh2 pcre2"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_CLAR=OFF \
        -DBUILD_FUZZERS=OFF \
        -DBUILD_EXAMPLES=OFF \
        -DBUILD_SHARED_LIBS=ON \
        -DENABLE_WERROR=OFF \
        -DENABLE_TRACE=OFF \
        -DDEPRECATE_HARD=OFF \
        -DPROFILE=OFF \
        -DTHREADSAFE=ON \
        -DUSE_SSH=ON \
        -DUSE_HTTPS=OpenSSL \
        -DUSE_BUNDLED_ZLIB=OFF \
        -DREGEX_BACKEND=pcre2
}
