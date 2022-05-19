pkg_set summary "Lua-based build system"
pkg_set webpage "https://premake.github.io/"
pkg_set git.url "https://github.com/premake/premake-core.git"
pkg_set version "4.4"
pkg_set src.url "https://downloads.sourceforge.net/project/premake/Premake/$PACKAGE_VERSION/premake-$PACKAGE_VERSION-beta5-src.zip"
pkg_set src.sha "0fa1ed02c5229d931e87995123cdb11d44fcc8bd99bba8e8bb1bbc0aaa798161"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "gmake"

build() {
    gmakew -C "$PACKAGE_BSCRIPT_DIR" -f Bootstrap.mak linux-clean
}
