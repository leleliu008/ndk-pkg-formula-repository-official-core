summary "Smart font renderer for non-Roman scripts"
webpage "https://graphite.sil.org"
src_git "https://github.com/silnrsi/graphite.git"
src_url "https://github.com/silnrsi/graphite/releases/download/1.3.14/graphite2-1.3.14.tgz"
src_sum "f99d1c13aa5fa296898a181dff9b82fb25f6cc0933dbaa7a475d8109bd54209d"
license "LGPL-2.1"
require "cmake"
depends "freetype2"

build() {
    cmake
}
