summary "Library making programming with POSIX capabilities easier than traditional libcap"
webpage "https://people.redhat.com/sgrubb/libcap-ng"
license "LGPL-2.1"
src_git "https://github.com/stevegrubb/libcap-ng.git"
src_url "https://github.com/stevegrubb/libcap-ng/archive/v0.8.2.tar.gz"
src_sum "65b86885b8d873e55c05bd49427fd370d559b26f0c2089ac9194828e6a2fe233"

# stdio_ext.h: int __fsetlocking(FILE* __fp, int __type) __INTRODUCED_IN(23);
sdk_api 23

prepare() {
	./autogen.sh
}

build() {
    configure
}
