package set summary "Go implementation of the Ethereum protocol"
package set webpage "https://geth.ethereum.org/"
package set git.url "https://github.com/ethereum/go-ethereum.git"
package set src.url "https://github.com/ethereum/go-ethereum/archive/refs/tags/v1.10.15.tar.gz"
package set src.sum "0c03bdf88fc01053fee8d73e3acc9579354b8c3c2333b544b800040dcd414963"
package set license "LGPL-3.0"
package set bsystem "go"

build() {
    for item in geth abigen bootnode ethkey evm rlpdump puppeth
    do
        gow ./cmd/$item || return 1
    done
}
