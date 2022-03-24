package set summary "7-Zip (high compression file archiver) implementation"
package set git.url "https://github.com/jinfeihan57/p7zip.git"
package set src.url "https://github.com/jinfeihan57/p7zip/archive/v17.04.tar.gz"
package set src.sum "ea029a2e21d2d6ad0a156f6679bd66836204aa78148a4c5e498fe682e77127ef"
package set license "LGPL-2.1-or-later"
package set bsystem "cmake"
package set dep.pkg "libiconv"
package set ldflags "-liconv"
package set cdefine "_UINT64_T_DECLARED"
package set bscript "CPP/7zip/CMAKE"

prepare() {
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7z_ DESTINATION bin RENAME 7z)' >> CMakeLists.txt &&
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7za DESTINATION bin)' >> CMakeLists.txt &&
    echo 'install(PROGRAMS ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/7zr DESTINATION bin)' >> CMakeLists.txt &&
    sed_in_place 's|SET(CMAKE_CXX_FLAGS "|SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} |' CMakeLists.txt &&
    sed_in_place 's|getpass("")|""|g' ../UI/Console/UserInputUtils.cpp
}
