summary "C test project"
webpage "https://github.com/leleliu008/C"
#src_url "https://github.com/leleliu008/C.git"
src_url "dir:///Users/leleliu008/git/C"

prepare() {
    :
}

build() {
    #WHICH=standard/posix/sys/stat.h
    #WHICH=standard/iso/variable/__thread
    WHICH=standard/iso/header/stdio.h/fprintf
    
    make $MAKEFLAGS -C $SOURCE_DIR/$WHICH clean
    make $MAKEFLAGS -C $SOURCE_DIR/$WHICH
}
