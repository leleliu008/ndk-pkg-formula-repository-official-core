pkg_set summary "XML parser"
pkg_set git.url "https://github.com/timniederhausen/rapidxml.git"
pkg_set bsystem "cmake"

build() {
    cmakew -DRAPIDXML_BUILD_TESTS=OFF
}
