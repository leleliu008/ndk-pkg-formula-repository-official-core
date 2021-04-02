summary "POSIX-compliant descendant of NetBSD's ash (the Almquist SHell)"
webpage "http://gondor.apana.org.au/~herbert/dash"
src_url "http://gondor.apana.org.au/~herbert/dash/files/dash-0.5.11.2.tar.gz"
src_sum "00fb7d68b7599cc41ab151051c06c01e9500540183d8aa72116cb9c742bd6d5f"
license "BSD-3-Clause"
bsystem "configure"
depends "libedit"

# char* strchrnul(char* __s, int __ch) __RENAME(strchrnul) __attribute_pure__ __INTRODUCED_IN(24);
sdk_api 24

# int glob(const char* __pattern, int __flags, int (*__error_callback)(const char* __failure_path, int __failure_errno), glob_t* __result_ptr) __INTRODUCED_IN(28);

build() {
    configure \
        --with-libedit="$libedit_INSTALL_DIR" \
        --enable-glob=no \
        --enable-test-workaround=no \
        --enable-fnmatch \
        --enable-lineno \
        ac_cv_func_faccessat=no
}
