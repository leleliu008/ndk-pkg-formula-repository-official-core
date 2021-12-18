package set summary "a tool for displaying a random quotation"
package set src.git "https://github.com/shlomif/fortune-mod.git"
package set src.url "https://github.com/shlomif/fortune-mod/releases/download/fortune-mod-3.10.0/fortune-mod-3.10.0.tar.xz"
package set src.sum "0d1ef7257a4e92968eb3298ff67c409250b1768c409e32f519e345e83fed0d37"
package set dep.cmd "pkg-config perl libxslt"
package set dep.plm "Path::Tiny App::Docmake"
package set bsystem "cmake"

build0() {
    cmakew
}
