summary "Color management engine supporting ICC profiles"
webpage "https://www.littlecms.com"
src_url "https://downloads.sourceforge.net/project/lcms/lcms/2.11/lcms2-2.11.tar.gz"
src_sum "dc49b9c8e4d7cdff376040571a722902b682a795bf92985a85b48854c270772e"
license "MIT"
require "make"
depends "libtiff libjpeg-turbo zlib"

build() {
    configure
}
