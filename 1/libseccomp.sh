summary "Library provides an easy to use, platform independent, interface to the Linux Kernel's syscall filtering mechanism"
src_git "https://github.com/seccomp/libseccomp.git"
src_url "https://github.com/seccomp/libseccomp/releases/download/v2.5.0/libseccomp-2.5.0.tar.gz"
src_sum "1ffa7038d2720ad191919816db3479295a4bcca1ec14e02f672539f4983014f3"

build() {
    configure \
        --disable-code-coverage \
        --disable-python
}
