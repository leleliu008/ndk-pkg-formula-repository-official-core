summary "a command-line tool to manage apps on iOS devices"
webpage "https://www.libimobiledevice.org"
src_url "https://github.com/libimobiledevice/ideviceinstaller/releases/download/1.1.1/ideviceinstaller-1.1.1.tar.bz2"
src_sum "deb883ec97f2f88115aab39f701b83c843e9f2b67fe02f5e00a9a7d6196c3063"
license "GPL-2.0"
depends "libimobiledevice libzip"
sdk_api 24

build() {
    configure \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes
}
