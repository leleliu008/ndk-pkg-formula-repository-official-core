pkg_set summary "Interpreted, interactive, object-oriented programming language"
pkg_set webpage "https://www.python.org"
pkg_set git.url "https://github.com/python/cpython.git"
pkg_set src.url "https://www.python.org/ftp/python/3.10.2/Python-3.10.2.tgz"
pkg_set src.sha "3c0ede893011319f9b0a56b44953a3d52c7abf9657c23fb4bc9ced93b86e9c97"
pkg_set license "Python-2.0"
pkg_set dep.pkg "expat libffi openssl sqlite bzip2 xz"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

build0() {
    unset PYTHONHOME
    unset PYTHONPATH

    configure
}

build() {
    unset PYTHONHOME
    unset PYTHONPATH

    configure \
        --build=$($PACKAGE_INSTALLING_BST_DIR/config.guess) \
        --with-system-expat \
        --with-system-ffi \
        --with-openssl="$openssl_INSTALL_DIR" \
        --with-ensurepip=no \
        --with-lto \
        --enable-ipv6 \
        --enable-loadable-sqlite-extensions \
        --disable-profiling \
        ac_cv_file__dev_ptmx=yes \
        ac_cv_file__dev_ptc=no \
        ac_cv_func_wcsftime=no \
        ac_cv_func_ftime=no \
        ac_cv_func_gethostbyname_r=no \
        ac_cv_func_linkat=no \
        ac_cv_posix_semaphores_enabled=no \
        ac_cv_func_sem_open=no \
        ac_cv_func_sem_timedwait=no \
        ac_cv_func_sem_getvalue=no \
        ac_cv_func_sem_unlink=no \
        ac_cv_buggy_getaddrinfo=no \
        ac_cv_little_endian_double=yes
}
