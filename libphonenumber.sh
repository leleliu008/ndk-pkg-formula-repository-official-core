summary="C++ Phone Number library by Google"
homepage="https://github.com/google/libphonenumber"
version="8.12.13"
url="https://github.com/google/libphonenumber/archive/v$version.tar.gz"
sha256="4d202b3d20c545d39a9a0bbaf0f7f26e64a8875429bfadf36f7015adb9bada37"
license="Apache-2.0"
requirements="protoc"
dependencies="boost icu4c re2 protobuf google-test"

prepare() {
    SOURCE_DIR="$WORKING_DIR/cpp"
    sed_in_place '/pthread/d' "$SOURCE_DIR/CMakeLists.txt"
}

build() {
    export LDFLAGS="$LDFLAGS -llog"
    cmake \
        -DBUILD_GEOCODER=OFF \
        -DBUILD_STATIC_LIB=ON \
        -DUSE_POSIX_THREAD=ON \
        -DUSE_ICU_REGEXP=ON \
        -DUSE_RE2=OFF \
        -DUSE_BOOST=ON \
        -DBoost_INCLUDE_DIR="$boost_INCLUDE_DIR" \
        -DBoost_ATOMIC_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_atomic.a" \
        -DBoost_CHRONO_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_chrono.a" \
        -DBoost_SYSTEM_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_system.a" \
        -DBoost_THREAD_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_thread.a" \
        -DBoost_DATE_TIME_LIBRARY_RELEASE="$boost_LIBRARY_DIR/libboost_date_time.a" \
        -DGTEST_INCLUDE_DIR="$google_test_INCLUDE_DIR" \
        -DGTEST_LIB="$google_test_LIBRARY_DIR/libgtest.a" \
        -DRE2_INCLUDE_DIR="$re2_INCLUDE_DIR" \
        -DRE2_LIB="$re2_LIBRARY_DIR/libre2.a" \
        -DPROTOBUF_INCLUDE_DIR="$protobuf_INCLUDE_DIR" \
        -DPROTOBUF_LIB="$protobuf_LIBRARY_DIR/libprotobuf.a" \
        -DICU_I18N_INCLUDE_DIR="$icu4c_INCLUDE_DIR" \
        -DICU_I18N_LIB="$icu4c_LIBRARY_DIR/libicui18n.a" \
        -DICU_UC_INCLUDE_DIR="$icu4c_INCLUDE_DIR" \
        -DICU_UC_LIB="$icu4c_LIBRARY_DIR/libicuuc.a"
}
