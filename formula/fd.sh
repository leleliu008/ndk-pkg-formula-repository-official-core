package set summary "Simple, fast and user-friendly alternative to find"
package set src.git "https://github.com/sharkdp/fd.git"
package set src.url "https://github.com/sharkdp/fd/archive/v8.2.1.tar.gz"
package set src.sum "429de7f04a41c5ee6579e07a251c72342cd9cf5b11e6355e861bb3fffa794157"
package set license "Apache-2.0"
package set bsystem "cargo"

# error: undefined reference to 'getgrnam_r'
# https://github.com/sharkdp/fd/issues/642
package set sdk.api 24
