package set summary "Lua-based build system"
package set webpage "https://premake.github.io/"
package set git.url "https://github.com/premake/premake-core.git"
package set version "4.4"
package set src.url "https://downloads.sourceforge.net/project/premake/Premake/$PACKAGE_VERSION/premake-$PACKAGE_VERSION-beta5-src.zip"
package set src.sum "0fa1ed02c5229d931e87995123cdb11d44fcc8bd99bba8e8bb1bbc0aaa798161"
package set license "BSD-3-Clause"
package set bsystem "make"

build() {
    makew -C "$SOURCE_DIR" -f Bootstrap.mak linux-clean
}
