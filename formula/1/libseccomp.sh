pkg_set summary "Library provides an easy to use, platform independent, interface to the Linux Kernel's syscall filtering mechanism"
pkg_set git.url "https://github.com/seccomp/libseccomp.git"
pkg_set src.url "https://github.com/seccomp/libseccomp/releases/download/v2.5.0/libseccomp-2.5.0.tar.gz"
pkg_set src.sha "1ffa7038d2720ad191919816db3479295a4bcca1ec14e02f672539f4983014f3"

build() {
    configure \
        --disable-code-coverage \
        --disable-python
}
