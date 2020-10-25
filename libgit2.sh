summary="C library of Git core methods that is re-entrant and linkable"
homepage="https://libgit2.github.com"
url="https://github.com/libgit2/libgit2/releases/download/v1.0.1/libgit2-1.0.1.tar.gz"
sha256="689f442c39c4117df515d1a0ffd7b401b91a500d7e2875ac45a440d86f198f5a"
dependencies="openssl pcre2 libssh2"

build() {
    cmake \
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
    -DREGEX_BACKEND=pcre2 \
    -DPCRE2_INCLUDE_DIR="$pcre2_INCLUDE_DIR" \
    -DPCRE2_LIBRARY="$pcre2_LIBRARY_DIR/libpcre2-8.so"
}
