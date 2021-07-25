package set summary "Create beautiful image of your source code"
package set src.git "https://github.com/Aloxaf/silicon.git"
package set src.url "https://github.com/Aloxaf/silicon/archive/v0.4.3.tar.gz"
package set src.sum "68d64ade34ac571cf2d092f9a6f124e2c7d0441a91e3ba00ca1c8edcdd008630"
package set license "MIT"
package set bsystem "cargo"

package set res

prepare() {
    for item in font-kit/0.10.1 libfontconfig/5.1.0
    do
        unset RES_NAME
        unset RES_VERS

        RES_NAME=$(echo $item | cut -d/ -f1)
        RES_VERS=$(echo $item | cut -d/ -f2)

        unset RES_UNPACK_DIR
        RES_UNPACK_DIR="$RES_NAME-$RES_VERS"

        fetch "https://github.com/servo/$RES_NAME/archive/refs/tags/v$RES_VERS.tar.gz" --output-dir="$MY_CACHED_SOURCE_DIR" --output-name="$RES_NAME-$RES_VERS.tar.gz" &&
        run mkdir -p $RES_UNPACK_DIR &&
        run tar xf "$MY_CACHED_SOURCE_DIR/$RES_NAME-$RES_VERS.tar.gz" -C $RES_UNPACK_DIR --strip-components 1
    done
    sed_in_place 's|--target=$(TARGET)||' ./libfontconfig-5.1.0/makefile.cargo &&
    sed_in_place '/version = "0.5"/c path = "./libfontconfig-5.1.0"' ./font-kit-0.10.1/Cargo.toml &&
    sed_in_place "/font-kit =/c font-kit = { path = \"./font-kit-0.10.1\" }" Cargo.toml
}
