package set summary "a tool for displaying a random quotation"
package set src.git "https://github.com/shlomif/fortune-mod.git"
#package set src.url "https://github.com/shlomif/fortune-mod/releases/download/fortune-mod-3.8.0/fortune-mod-3.8.0.tar.xz"
#package set src.sum "1d74186166617d8213ef012bf4503299a41611f8340dc6964f4cfbcaf719f812"
package set dep.cmd "pkg-config perl"
package set dep.plm "Path::Tiny App::Docmake"
package set bsystem "cmake"
package set sourced "fortune-mod"

build0() {
    cmakew
}
