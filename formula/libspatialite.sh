pkg_set summary "Adds spatial SQL capabilities to SQLite"
pkg_set webpage "https://www.gaia-gis.it/fossil/libspatialite/index"
pkg_set src.url "https://www.gaia-gis.it/gaia-sins/libspatialite-sources/libspatialite-5.0.1.tar.gz"
pkg_set src.sha "eecbc94311c78012d059ebc0fae86ea5ef6eecb13303e6e82b3753c1b3409e98"
pkg_set license "MPL-1.1"
pkg_set dep.pkg "freexl librttopo libxml2 minizip proj7"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

build() {
    configure --with-geosconfig="$geos_INSTALL_DIR/bin/geos-config"
}
