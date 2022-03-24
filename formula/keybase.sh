package set summary "Key directory that maps social media identities to encryption keys"
package set webpage "https://keybase.io"
package set git.url "https://github.com/keybase/client.git"
package set src.url "https://github.com/keybase/client/releases/download/v5.9.3/keybase-v5.9.3.tar.xz"
package set src.sum "5583655a42e57d8837c43c1484265873bf498ebd6288be5a8929c6c79aec0e80"
package set license "BSD-3-Clause"
package set bsystem "go"
package set bscript "go"

build() {
    for item in keybase kbfs/kbfsfuse kbfs/kbfsgit/git-remote-keybase
    do
        gow -tags production ./$item || return 1
    done
}
