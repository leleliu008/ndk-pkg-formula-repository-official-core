package set summary "Simple, fast and user-friendly alternative to find"
package set git.url "https://github.com/sharkdp/fd.git"
package set src.url "https://github.com/sharkdp/fd/archive/v8.3.1.tar.gz"
package set src.sum "834a90fbb4e1deee2ca7f3aa84575c9187869d8af00f72e431ecab4776ae1f62"
package set license "Apache-2.0"
package set bsystem "cargo"

# error: undefined reference to 'getgrnam_r'
# https://github.com/sharkdp/fd/issues/642
package set sdk.api 24
