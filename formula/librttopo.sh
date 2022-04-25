pkg_set summary "RT Topology Library"
pkg_set git.url "https://git.osgeo.org/gitea/rttopo/librttopo.git"
pkg_set src.url "https://git.osgeo.org/gitea/rttopo/librttopo/archive/librttopo-1.1.0.tar.gz"
pkg_set src.sha "2e2fcabb48193a712a6c76ac9a9be2a53f82e32f91a2bc834d9f1b4fa9cd879f"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "geos"
pkg_set dep.cmd "libtoolize"
pkg_set bsystem "autogen"

build() {
    configure --with-geosconfig="$geos_INSTALL_DIR/bin/geos-config"
}
