pkg_set summary "The tiny JavaScript runtime built with QuickJS"
pkg_set git.url "https://github.com/saghul/txiki.js.git"
#pkg_set dep.pkg "quickjs"
pkg_set bsystem "cmake"

build() {
    cmakew
}
