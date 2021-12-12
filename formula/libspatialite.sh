package set summary "Adds spatial SQL capabilities to SQLite"
package set webpage "https://www.gaia-gis.it/fossil/libspatialite/index"
package set license "MPL-1.1"
package set src.url "https://www.gaia-gis.it/gaia-sins/libspatialite-sources/libspatialite-5.0.1.tar.gz"
package set src.sum "eecbc94311c78012d059ebc0fae86ea5ef6eecb13303e6e82b3753c1b3409e98"
package set dep.pkg "freexl librttopo libxml2 minizip proj7"
package set dep.cmd "pkg-config"
package set bsystem "configure"

prepare() {
    sed_in_place 's|-lpthread||g' configure &&
    sed_in_place 's|-lpthread||g' src/Makefile.in
}

build() {
    configure --with-geosconfig="$geos_INSTALL_DIR/bin/geos-config"
}
