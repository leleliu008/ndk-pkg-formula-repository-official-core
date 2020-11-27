summary  "C test project"
homepage "https://github.com/leleliu008/C"
#url      "https://github.com/leleliu008/C.git"
url      "dir:///Users/leleliu008/git/C"

build() {
    #WHICH=standard/posix/sys/stat.h
    #WHICH=standard/iso/variable/__thread
    WHICH=standard/iso/header/stdio.h/fprintf
    
    $MAKE -C $SOURCE_DIR/$WHICH clean
    $MAKE -C $SOURCE_DIR/$WHICH
}
