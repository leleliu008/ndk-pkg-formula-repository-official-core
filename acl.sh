summary="C library and utilities for Manipulating POSIX Access Control Lists"
homepage="https://savannah.nongnu.org/projects/acl"
version="2.2.53"
url="https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/a/acl/acl_$version.orig.tar.gz"
sha256="06be9865c6f418d851ff4494e12406568353b891ffe1f596b34693c387af26c7"
dependencies="xattr"

# https://github.com/android/ndk/issues/964
# __register_atfork; # introduced=23

build() {
    configure
}
