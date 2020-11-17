summary="a command-line tool to manage apps on iOS devices"
homepage="https://www.libimobiledevice.org"
url="https://github.com/libimobiledevice/ideviceinstaller/releases/download/1.1.1/ideviceinstaller-1.1.1.tar.bz2"
sha256="deb883ec97f2f88115aab39f701b83c843e9f2b67fe02f5e00a9a7d6196c3063"
license="GPL-2.0"
dependencies="libimobiledevice libzip"

build() {
    configure \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes
}
