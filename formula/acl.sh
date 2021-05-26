package set summary "C library and utilities for Manipulating POSIX Access Control Lists"
package set webpage "https://savannah.nongnu.org/projects/acl"
package set version "2.2.53"
package set src.url "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/a/acl/acl_${PACKAGE_VERSION}.orig.tar.gz"
package set src.sum "06be9865c6f418d851ff4494e12406568353b891ffe1f596b34693c387af26c7"
package set bsystem "configure"
package set dep.pkg "xattr"

# https://github.com/android/ndk/issues/964
# __register_atfork; # introduced=23
package set sdk.api 23
