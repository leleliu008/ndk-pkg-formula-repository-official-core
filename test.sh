package set summary "C test project"
package set src.git "https://github.com/leleliu008/C.git"
#package set src.url "dir:///Users/leleliu008/git/C"
package set bsystem "make"

build() {
    #WHICH=standard/posix/sys/stat.h
    #WHICH=standard/iso/variable/__thread
    WHICH=standard/iso/header/stdio.h/fprintf
    
    makew -C $SOURCE_DIR/$WHICH clean
    makew -C $SOURCE_DIR/$WHICH
}
