package set summary "Simple, fast and user-friendly alternative to find"
package set git.url "https://github.com/sharkdp/fd.git"
package set src.url "https://github.com/sharkdp/fd/archive/v8.3.2.tar.gz"
package set src.sum "9cc2354c652ee38369a4ce865404f284e94fa9daf043bb31d36297e7a2d7cd45"
package set license "Apache-2.0"
package set bsystem "cargo"

# error: undefined reference to 'getgrnam_r'
# https://github.com/sharkdp/fd/issues/642
package set sdk.api 24
