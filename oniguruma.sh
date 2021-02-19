summary "Regular expressions library"
webpage "https://github.com/kkos/oniguruma"
src_git "https://github.com/kkos/oniguruma.git"
src_url "https://github.com/kkos/oniguruma/releases/download/v6.9.6/onig-6.9.6.tar.gz"
src_sum "bd0faeb887f748193282848d01ec2dad8943b5dfcb8dc03ed52dcc963549e819"
license "BSD-2-Clause"
require "make"

build() {
    configure
}
