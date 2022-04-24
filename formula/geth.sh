package set summary "Go implementation of the Ethereum protocol"
package set webpage "https://geth.ethereum.org/"
package set git.url "https://github.com/ethereum/go-ethereum.git"
package set src.url "https://github.com/ethereum/go-ethereum/archive/refs/tags/v1.10.17.tar.gz"
package set src.sum "00db123e1b23d3d904bd8a6bd4de8f3330d14db1622e8f22bf1653c94f03e09c"
package set license "LGPL-3.0-or-later;COPYING;https://raw.githubusercontent.com/ethereum/go-ethereum/master/COPYING"
package set bsystem "go"

build() {
    for item in geth abigen bootnode ethkey evm rlpdump puppeth
    do
        gow ./cmd/$item || return 1
    done
}
