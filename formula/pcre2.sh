pkg_set summary "Perl compatible regular expressions library with a new API"
pkg_set webpage "https://www.pcre.org"
pkg_set git.url "https://github.com/PhilipHazel/pcre2.git"
pkg_set src.url "https://github.com/PhilipHazel/pcre2/releases/download/pcre2-10.40/pcre2-10.40.tar.bz2"
pkg_set src.sha "14e4b83c4783933dc17e964318e6324f7cae1bc75d8f3c79bc6969f00c159d68"
pkg_set dep.pkg "zlib bzip2"
pkg_set bsystem "cmake"
pkg_set license "BSD-3-Clause|LICENCE|https://raw.githubusercontent.com/PCRE2Project/pcre2/master/LICENCE"
pkg_set developer "Philip+Hazel|Philip.Hazel@gmail.com Zoltan+Herczeg|hzmester@reemail.hu"

prepare() {
    sed_in_place 's|DESTINATION cmake|DESTINATION ${CMAKE_INSTALL_LIBDIR}/pcre2/cmake|' CMakeLists.txt
}

build() {
    cmakew \
        -DPCRE2_BUILD_PCRE2_8=ON \
        -DPCRE2_BUILD_PCRE2_16=ON \
        -DPCRE2_BUILD_PCRE2_32=ON \
        -DPCRE2_BUILD_PCRE2GREP=ON \
        -DPCRE2_BUILD_TESTS=OFF \
        -DPCRE2_DEBUG=OFF \
        -DPCRE2_SUPPORT_VALGRIND=OFF \
        -DPCRE2_SUPPORT_UNICODE=ON \
        -DPCRE2_SUPPORT_LIBZ=ON \
        -DPCRE2_SUPPORT_LIBBZ2=ON
}
