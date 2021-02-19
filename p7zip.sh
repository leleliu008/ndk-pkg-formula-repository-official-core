summary "7-Zip (high compression file archiver) implementation"
webpage "https://github.com/jinfeihan57/p7zip"
src_git "https://github.com/jinfeihan57/p7zip.git"
src_url "https://github.com/jinfeihan57/p7zip/archive/v17.03.tar.gz"
src_sum "bb4b9b21584c0e076e0b4b2705af0dbe7ac19d378aa7f09a79da33a5b3293187"
require "cmake"
depends "libiconv"
ldflags "-liconv"
cdefine "_UINT64_T_DECLARED"
sourced "CPP/7zip/CMAKE"

prepare() {
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7z_ DESTINATION bin RENAME 7z)' >> CMakeLists.txt &&
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7za DESTINATION bin)' >> CMakeLists.txt &&
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7zr DESTINATION bin)' >> CMakeLists.txt &&
    sed_in_place 's|SET(CMAKE_CXX_FLAGS "|SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} |' CMakeLists.txt &&
    sed_in_place 's|getpass("")|""|g' ../UI/Console/UserInputUtils.cpp
}

build() {
    cmake
}
