summary="POSIX-compliant descendant of NetBSD's ash (the Almquist SHell)"
homepage="http://gondor.apana.org.au/~herbert/dash"
url="http://gondor.apana.org.au/~herbert/dash/files/dash-0.5.11.2.tar.gz"
sha256="00fb7d68b7599cc41ab151051c06c01e9500540183d8aa72116cb9c742bd6d5f"
license="BSD-3-Clause"
dependencies="libedit"

prepare() {
    sed_in_place 's/wait3(status, flags, NULL)/waitpid(-1, flags, NULL)/' src/jobs.c
}

# char* strchrnul(char* __s, int __ch) __RENAME(strchrnul) __attribute_pure__ __INTRODUCED_IN(24);
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
