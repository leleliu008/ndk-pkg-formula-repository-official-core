summary "C++ Phone Number library by Google"
webpage "https://github.com/google/libphonenumber"
src_git "https://github.com/google/libphonenumber.git"
src_url "https://github.com/google/libphonenumber/archive/v8.12.13.tar.gz"
src_sum "4d202b3d20c545d39a9a0bbaf0f7f26e64a8875429bfadf36f7015adb9bada37"
license "Apache-2.0"
require "pkg-config protoc"
depends "boost icu4c protobuf google-test"
ldflags "-llog -lz -licudata -lstdc++"
sourced "cpp"

prepare() {
    sed_in_place '/pthread/d' CMakeLists.txt
}

build() {
    cmake \
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
        -DGTEST_INCLUDE_DIR="$google_test_INCLUDE_DIR" \
        -DGTEST_LIB="$google_test_LIBRARY_DIR/libgtest.so" \
        -DPROTOBUF_INCLUDE_DIR="$protobuf_INCLUDE_DIR" \
        -DPROTOBUF_LIB="$protobuf_LIBRARY_DIR/libprotobuf.so" \
        -DICU_I18N_INCLUDE_DIR="$icu4c_INCLUDE_DIR" \
        -DICU_I18N_LIB="$icu4c_LIBRARY_DIR/libicui18n.so" \
        -DICU_UC_INCLUDE_DIR="$icu4c_INCLUDE_DIR" \
        -DICU_UC_LIB="$icu4c_LIBRARY_DIR/libicuuc.so"
}
