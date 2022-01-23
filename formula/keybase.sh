package set summary "Key directory that maps social media identities to encryption keys"
package set webpage "https://keybase.io"
package set git.url "https://github.com/keybase/client.git"
package set src.url "https://github.com/keybase/client/releases/download/v5.9.1/keybase-v5.9.1.tar.xz"
package set src.sum "38f48a55173738c802f7adde4756c175fa545e9f086b8bf61127ad9377be7dd7"
package set license "BSD-3-Clause"
package set bsystem "go"
package set sourced "go"

build() {
    for item in keybase kbfs/kbfsfuse kbfs/kbfsgit/git-remote-keybase
    do
        gow -tags production ./$item || return 1
    done
}
