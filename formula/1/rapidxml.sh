package set summary "XML parser"
package set src.git "https://github.com/timniederhausen/rapidxml.git"
package set bsystem "cmake"

build() {
    cmakew -DRAPIDXML_BUILD_TESTS=OFF
}
