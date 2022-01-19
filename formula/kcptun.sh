package set summary "Stable & Secure Tunnel based on KCP with N:M multiplexing and FEC"
package set git.url "https://github.com/xtaci/kcptun.git"
package set src.url "https://github.com/xtaci/kcptun/archive/v20210922.tar.gz"
package set src.sum "f6a08f0fe75fa85d15f9c0c28182c69a5ad909229b4c230a8cbe38f91ba2d038"
package set license "MIT"
package set bsystem "go"

build() {
    for item in server client
    do
        gow -X main.VERSION=$PACKAGE_VERSION -o kcptun_$item ./$item || return 1
    done

    run install_etcs examples/local.json
}
