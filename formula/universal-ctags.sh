package set summary "Maintained ctags implementation"
package set git.url "https://github.com/universal-ctags/ctags.git"
package set license "GPL-2.0"
package set dep.pkg "jansson libyaml libxml2"
package set dep.cmd "pkg-config"
package set bsystem "autogen"

build() {
    configure --disable-static
}
