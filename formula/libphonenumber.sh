package set summary "C++ Phone Number library by Google"
package set git.url "https://github.com/google/libphonenumber.git"
package set src.url "https://github.com/google/libphonenumber/archive/v8.12.39.tar.gz"
package set src.sum "ff16330f130917e42bc0b1a7efe5e4fba46633bfa62e35268acec855e17e385c"
package set license "Apache-2.0"
package set dep.cmd "pkg-config protoc"
package set dep.pkg "boost icu4c protobuf googletest"
package set ldflags "-llog -lz -licudata -lstdc++"
package set sourced "cpp"

prepare() {
    sed_in_place '/pthread/d' CMakeLists.txt
}

build() {
    cmakew \
        -DBUILD_GEOCODER=OFF \
        -DBUILD_STATIC_LIB=ON \
        -DUSE_POSIX_THREAD=ON \
        -DUSE_ICU_REGEXP=ON \
        -DUSE_RE2=OFF \
        -DUSE_BOOST=ON \
        -DBoost_INCLUDE_DIR="$boost_INCLUDE_DIR" \
        -DBoost_ATOMIC_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_atomic.so" \
        -DBoost_CHRONO_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_chrono.so" \
        -DBoost_SYSTEM_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_system.so" \
        -DBoost_THREAD_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_thread.so" \
        -DBoost_DATE_TIME_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_date_time.so" \
        -DGTEST_INCLUDE_DIR="$googletest_INCLUDE_DIR" \
        -DGTEST_LIB="$googletest_LIBRARY_DIR/libgtest.so" \
        -DPROTOBUF_INCLUDE_DIR="$protobuf_INCLUDE_DIR" \
        -DPROTOBUF_LIB="$protobuf_LIBRARY_DIR/libprotobuf.so" \
        -DICU_I18N_INCLUDE_DIR="$icu4c_INCLUDE_DIR" \
        -DICU_I18N_LIB="$icu4c_LIBRARY_DIR/libicui18n.so" \
        -DICU_UC_INCLUDE_DIR="$icu4c_INCLUDE_DIR" \
        -DICU_UC_LIB="$icu4c_LIBRARY_DIR/libicuuc.so"
}
