pkg_set summary "Simple, fast and user-friendly alternative to find"
pkg_set git.url "https://github.com/sharkdp/fd.git"
pkg_set src.url "https://github.com/sharkdp/fd/archive/v8.3.2.tar.gz"
pkg_set src.sha "9cc2354c652ee38369a4ce865404f284e94fa9daf043bb31d36297e7a2d7cd45"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"

# error: undefined reference to 'getgrnam_r'
# https://github.com/sharkdp/fd/issues/642
pkg_set sdk.api 24
