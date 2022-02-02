package set summary "Interactive cheatsheet tool for the command-line"
package set git.url "https://github.com/denisidoro/navi.git"
package set src.url "https://github.com/denisidoro/navi/archive/v2.19.0.tar.gz"
package set src.sum "dfcefd8deb4c472517640e5ff285ec9f8cfc54546e6616917bfd8d6bc0f2e086"
package set license "Apache-2.0"
package set bsystem "cargo"

build() {
    cargow install --locked
}
