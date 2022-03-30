package set summary "C library and utilities for Manipulating POSIX Access Control Lists"
package set webpage "https://savannah.nongnu.org/projects/acl"
package set src.url "https://download.savannah.nongnu.org/releases/acl/acl-2.3.1.tar.gz"
package set src.sum "760c61c68901b37fdd5eefeeaf4c0c7a26bdfdd8ac747a1edff1ce0e243c11af"
package set dep.pkg "attr"
package set bsystem "configure"

# https://github.com/android/ndk/issues/964
# __register_atfork; # introduced=23
package set sdk.api 23
