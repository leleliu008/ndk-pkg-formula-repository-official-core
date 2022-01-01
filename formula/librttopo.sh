package set summary "RT Topology Library"
package set git.url "https://git.osgeo.org/gitea/rttopo/librttopo.git"
package set src.url "https://git.osgeo.org/gitea/rttopo/librttopo/archive/librttopo-1.1.0.tar.gz"
package set src.sum "2e2fcabb48193a712a6c76ac9a9be2a53f82e32f91a2bc834d9f1b4fa9cd879f"
package set license "GPL-2.0-or-later"
package set dep.pkg "geos"
package set dep.cmd "libtoolize"
package set bsystem "autogen"

build() {
    configure --with-geosconfig="$geos_INSTALL_DIR/bin/geos-config"
}
