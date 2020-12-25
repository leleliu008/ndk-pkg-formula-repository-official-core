summary "Cross-platform Audio Library"
webpage "https://www.xiph.org/ao"
src_url "https://github.com/xiph/libao/archive/1.2.2.tar.gz"
src_sum "df8a6d0e238feeccb26a783e778716fb41a801536fe7b6fce068e313c0e2bf4d"
license "GPL-2.0"

prepare() {
    ./autogen.sh
}

build() {
    configure
}
