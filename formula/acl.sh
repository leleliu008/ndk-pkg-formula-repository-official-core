pkg_set summary "C library and utilities for Manipulating POSIX Access Control Lists"
pkg_set webpage "https://savannah.nongnu.org/projects/acl"
pkg_set src.url "https://download.savannah.nongnu.org/releases/acl/acl-2.3.1.tar.gz"
pkg_set src.sha "760c61c68901b37fdd5eefeeaf4c0c7a26bdfdd8ac747a1edff1ce0e243c11af"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "attr"
pkg_set bsystem "configure"

# https://github.com/android/ndk/issues/964
# __register_atfork; # introduced=23
pkg_set sdk.api 23
