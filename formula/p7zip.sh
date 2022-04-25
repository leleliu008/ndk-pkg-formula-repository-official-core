pkg_set summary "7-Zip (high compression file archiver) implementation"
pkg_set git.url "https://github.com/jinfeihan57/p7zip.git"
pkg_set src.url "https://github.com/jinfeihan57/p7zip/archive/v17.04.tar.gz"
pkg_set src.sha "ea029a2e21d2d6ad0a156f6679bd66836204aa78148a4c5e498fe682e77127ef"
pkg_set license "LGPL-2.1-or-later"
pkg_set bsystem "cmake"
pkg_set dep.pkg "libiconv"
pkg_set ldflags "-liconv"
pkg_set cdefine "_UINT64_T_DECLARED"
pkg_set bscript "CPP/7zip/CMAKE"

prepare() {
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7z_ DESTINATION bin RENAME 7z)' >> CMakeLists.txt &&
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7za DESTINATION bin)' >> CMakeLists.txt &&
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7zr DESTINATION bin)' >> CMakeLists.txt &&
    sed_in_place 's|SET(CMAKE_CXX_FLAGS "|SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} |' CMakeLists.txt &&
    sed_in_place 's|getpass("")|""|g' ../UI/Console/UserInputUtils.cpp
}
