summary  "Smart font renderer for non-Roman scripts"
homepage "https://graphite.sil.org"
repo     "https://github.com/silnrsi/graphite.git"
url      "https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz"
sha256   "f99d1c13aa5fa296898a181dff9b82fb25f6cc0933dbaa7a475d8109bd54209d"
license  "LGPL-2.1"
requirements "cmake"
dependencies "freetype"

build() {
    cmake
}
