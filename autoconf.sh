summary "Automatic configure script builder"
webpage "https://www.gnu.org/software/autoconf"
src_url "https://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz"
src_sum "954bd69b391edc12d6a4a51a2dd1476543da5c6bbf05a95b59dc0dd6fd4c2969"
license "GPL-2.0-or-later"
require "m4 perl"

build() {
    configure
}
