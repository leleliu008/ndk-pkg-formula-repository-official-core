package set summary "The tiny JavaScript runtime built with QuickJS"
package set src.git "https://github.com/saghul/txiki.js.git"
#package set dep.pkg "quickjs"
package set bsystem "cmake"

build() {
    cmakew
}
