pkg_set summary "Simple, fast and user-friendly alternative to find"
pkg_set git.url "https://github.com/sharkdp/fd.git"
pkg_set src.url "https://github.com/sharkdp/fd/archive/v8.4.0.tar.gz"
pkg_set src.sha "d0c2fc7ddbe74e3fd88bf5bb02e0f69078ee6d2aeea3d8df42f508543c9db05d"
pkg_set license "Apache-2.0"
pkg_set bsystem "cargo"

# error: undefined reference to 'getgrnam_r'
# https://github.com/sharkdp/fd/issues/642
pkg_set sdk.api 24
