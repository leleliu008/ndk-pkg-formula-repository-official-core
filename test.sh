summary "C test project"
src_git "https://github.com/leleliu008/C.git"
#src_url "dir:///Users/leleliu008/git/C"
bsystem "make"

build() {
    #WHICH=standard/posix/sys/stat.h
    #WHICH=standard/iso/variable/__thread
    WHICH=standard/iso/header/stdio.h/fprintf
    
    make -C $SOURCE_DIR/$WHICH clean
    make -C $SOURCE_DIR/$WHICH
}
