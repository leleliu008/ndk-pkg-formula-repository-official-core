package set summary "a free, open-source, multiplatform C++ Standard Library implementation"
package set webpage "http://stlport.org"
package set src.url "https://jaist.dl.sourceforge.net/project/stlport/STLport/STLport-5.2.1/STLport-5.2.1.tar.bz2"
package set src.sum "755b007b982c4545086c43affc8ed32c0acd577ee206eb1f6967e250c3546fc9"

package set binsrcd 'yes'

build() {
    ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --without-debug \
        --enable-static \
        --with-cc="$CC" \
        --with-cxx="$CXX" \
        --with-extra-cflags="$CFLAGS $CPPFLAGS" \
        --with-extra-cxxflags="$CXXFLAGS $CPPFLAGS" \
        --with-extra-ldflags="$LDFLAGS" &&
    makew clean &&
    makew &&
    makew install
}
