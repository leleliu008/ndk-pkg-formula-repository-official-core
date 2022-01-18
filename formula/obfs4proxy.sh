package set summary "Pluggable transport proxy for Tor, implementing obfs4"
package set git.url "https://gitlab.com/yawning/obfs4.git"
package set src.url "https://gitlab.com/yawning/obfs4/-/archive/obfs4proxy-0.0.12/obfs4-obfs4proxy-0.0.12.tar.gz"
package set src.sum "aac3d4c4ba30dd2d2ec7d9356b384ae87f688a0c3188020e7d54047228c6020e"
package set license "BSD-2-Clause"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o obfs4proxy/obfs4proxy ./obfs4proxy &&
    run install_bins obfs4proxy/obfs4proxy
}
