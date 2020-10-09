summary="Bytecode optimizer for Android apps"
homepage="https://fbredex.com"
url="https://github.com/facebook/redex.git"
license="MIT"
dependencies="boost jsoncpp libexecinfo"

prepare() {
    sed_in_place 's/__ANDROID__/0/g' tools/oatmeal/dump-oat.cpp &&
    sed_in_place 's/__ANDROID__/0/g' tools/oatmeal/elf-writer.cpp &&
    sed_in_place 's/#ifdef __ANDROID__/#if 0/' libresource/ResourceTypes.cpp
}

build() {
    export LDFLAGS="$LDFLAGS -lexecinfo"
    cmake \
        -DBUILD_TYPE=Static \
        -DBoost_INCLUDE_DIR="$boost_DIR_INCLUDE"
}
