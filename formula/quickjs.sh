package set summary "Small and embeddable JavaScript engine"
package set webpage "https://bellard.org/quickjs"
package set version "2020-11-08"
package set src.url "https://bellard.org/quickjs/quickjs-${PACKAGE_VERSION}.tar.xz"
package set src.sum "2e9d63dab390a95ed365238f21d8e9069187f7ed195782027f0ab311bb64187b"
package set license "MIT"
package set bsystem "make"

package set binsrcd 'YES'

prepare() {
    sed_in_place 's|-g||' Makefile &&
    sed_in_place 's|LIBS+=-ldl -lpthread|LIBS+=-ldl|' Makefile &&
    sed_in_place 's|$(QJSC) -c|./host-qjsc -c|'       Makefile &&
    sed_in_place 's|$(QJSC) -fbignum|./host-qjsc -fbignum|' Makefile &&
    sed_in_place 's|lib/quickjs|lib|g'         Makefile &&
    sed_in_place 's|include/quickjs|include|g' Makefile
}

build() {
    makew clean &&
    makew install HOST_CC=$CC_FOR_BUILD CC=$CC AR=$AR STRIP=$STRIP CROSS_PREFIX=xxx prefix="$ABI_INSTALL_DIR"
}
