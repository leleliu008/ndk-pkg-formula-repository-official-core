package set summary "Interactive cheatsheet tool for the command-line"
package set git.url "https://github.com/denisidoro/navi.git"
package set src.url "https://github.com/denisidoro/navi/archive/v2.18.0.tar.gz"
package set src.sum "be36c9021a23c94b585e6dc328495a818dea7de6057572ab25858f45f95e2312"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    cargow install --locked
}
