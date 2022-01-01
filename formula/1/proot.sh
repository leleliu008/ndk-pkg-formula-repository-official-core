package set summary "a user-space implementation of chroot, mount --bind, and binfmt_misc."
package set webpage "https://proot-me.github.io"
package set git.url "https://github.com/proot-me/proot.git"
package set version "5.2.0-alpha"
package set src.url "https://github.com/proot-me/proot/archive/refs/tags/v$PACKAGE_VERSION.tar.gz"
package set src.sum "852d2faf85234e6e832d4c9938ff8befa91b89f019969afd80907554568905fc"
package set license "GPL-2.0"
package set dep.cmd "pkg-config python3 git"
package set dep.pkg "libarchive talloc"
package set bsystem "make"

package set sdk.api 23

prepare() {
    cd src &&
    printf "LS0tIEdOVW1ha2VmaWxlLmJhawkyMDIxLTA3LTAyIDIyOjQ0OjUwLjAwMDAwMDAwMCArMDgwMAorKysgR05VbWFrZWZpbGUJMjAyMS0wNy0wMiAyMzowMDozNy4wMDAwMDAwMDAgKzA4MDAKQEAgLTE5LDExICsxOSwxMCBAQAogUFlUSE9OX01BSk9SX1ZFUlNJT04gPSAkKHNoZWxsICR7UFlUSE9OfSAtYyAiaW1wb3J0IHN5czsgcHJpbnQoc3lzLnZlcnNpb25faW5mby5tYWpvcikiIDI+L2Rldi9udWxsKQogSEFTX1BZVEhPTl9DT05GSUcgOj0gJChzaGVsbCAke1BZVEhPTn0tY29uZmlnIC0tbGRmbGFncyAyPi9kZXYvbnVsbCkKIAotQ1BQRkxBR1MgKz0gLURfRklMRV9PRkZTRVRfQklUUz02NCAtRF9HTlVfU09VUkNFIC1JLiAtSSQoVlBBVEgpCi1DRkxBR1MgICArPSAtZyAtV2FsbCAtV2V4dHJhIC1PMgotQ0ZMQUdTICAgKz0gJChzaGVsbCBwa2ctY29uZmlnIC0tY2ZsYWdzIHRhbGxvYyBsaWJhcmNoaXZlKQotTERGTEFHUyAgKz0gLVdsLC16LG5vZXhlY3N0YWNrCi1MREZMQUdTICArPSAkKHNoZWxsIHBrZy1jb25maWcgLS1saWJzIHRhbGxvYyBsaWJhcmNoaXZlKQorb3ZlcnJpZGUgQ1BQRkxBR1MgKz0gLURfRklMRV9PRkZTRVRfQklUUz02NCAtRF9HTlVfU09VUkNFIC1JLiAtSSQoVlBBVEgpCitvdmVycmlkZSBDRkxBR1MgICArPSAtV2FsbCAtV2V4dHJhCitvdmVycmlkZSBDRkxBR1MgICArPSAkKHNoZWxsIHBrZy1jb25maWcgLS1jZmxhZ3MgdGFsbG9jIGxpYmFyY2hpdmUpCitvdmVycmlkZSBMREZMQUdTICArPSAkKHNoZWxsIHBrZy1jb25maWcgLS1saWJzICAgdGFsbG9jIGxpYmFyY2hpdmUpCiAKIENBUkVfTERGTEFHUyA9IC1sYXJjaGl2ZQogCkBAIC0xODQsNyArMTgzLDYgQEAKICMgU3BlY2lhbCBjYXNlIHRvIGNvbXB1dGUgd2hpY2ggZmlsZXMgZGVwZW5kIG9uIHRoZSBhdXRvLWdlbmVyYXRlZAogIyBmaWxlICJidWlsZC5oIi4KIFVTRV9CVUlMRF9IIDo9ICQocGF0c3Vic3QgJChTUkMpJS5jLCUubywkKHNoZWxsIGVncmVwIC1zbCAnaW5jbHVkZVtbOnNwYWNlOl1dKyJidWlsZC5oIicgJChwYXRzdWJzdCAlLm8sJChTUkMpJS5jLCQoT0JKRUNUUykgJChDQVJFX09CSkVDVFMpKSkpCi0kKFVTRV9CVUlMRF9IKTogYnVpbGQuaAogCiAlLm86ICUuYwogCUBta2RpciAtcCAkKGRpciAkQCkKQEAgLTI0Niw3ICsyNDQsNyBAQAogJChldmFsICQoY2FsbCBkZWZpbmVfZnJvbV9hcmNoLmgsJDEsTE9BREVSX0FERFJFU1MpKQogCiBMT0FERVJfQ0ZMQUdTJDEgICs9IC1mUElDIC1mZnJlZXN0YW5kaW5nICQoTE9BREVSX0FSQ0hfQ0ZMQUdTJDEpCi1MT0FERVJfTERGTEFHUyQxICs9IC1zdGF0aWMgLW5vc3RkbGliIC1XbCQoQlVJTERfSURfTk9ORSksLVR0ZXh0PSQoTE9BREVSX0FERFJFU1MkMSksLXosbm9leGVjc3RhY2sKK0xPQURFUl9MREZMQUdTJDEgKz0gLXN0YXRpYyAtbm9zdGRsaWIKIAogbG9hZGVyL2xvYWRlciQxLm86IGxvYWRlci9sb2FkZXIuYwogCUBta2RpciAtcCAkJChkaXIgJCRAKQo=" | base64 -d | patch &&
    sed_in_place '1i #include<libgen.h>' cli/cli.c
}

create_build_h() {
    cat > $SOURCE_DIR/src/build.h <<EOF
#ifndef BUILD_H
#define BUILD_H
#undef  VERSION
#define VERSION "$PACKAGE_VERSION"
#endif
EOF
}

build() {
    if [ "$TARGET_INDEX" -eq 1 ] ; then
        insert_1 || return 1
        insert_2 || return 1
    fi
    makew -C $SOURCE_DIR/src clean &&
    create_build_h &&
    makew -C $SOURCE_DIR/src V=1 CC=$CC LD=$CC STRIP=$STRIP OBJCOPY=$OBJCOPY OBJDUMP=$OBJDUMP CPPFLAGS="'$CPPFLAGS'" CFLAGS="'$CFLAGS'" LDFLAGS="'$LDFLAGS'" &&
    makew -C $SOURCE_DIR/src install PREFIX=$ABI_INSTALL_DIR DESTDIR=
}

insert_1() {
    sed_in_place '1i static char* get_current_dir_name();' "$SOURCE_DIR/src/path/temp.c" &&
    cat >> "$SOURCE_DIR/src/path/temp.c" <<'EOF'
        char* get_current_dir_name() {
	        struct stat a, b;
	        char *res = getenv("PWD");
	        if (res && *res && !stat(res, &a) && !stat(".", &b)
	            && (a.st_dev == b.st_dev) && (a.st_ino == b.st_ino))
		        return strdup(res);
	        return getcwd(0, 0);
        }
EOF
}

insert_2() {
    sed_in_place '1i static char* get_current_dir_name();' "$SOURCE_DIR/src/syscall/rlimit.c" &&
    cat >> "$SOURCE_DIR/src/syscall/rlimit.c" <<'EOF'
        //prlimit(2)
        //Return Value
        //On success, these system calls return 0.
        //Only for root users, or for users with a capability the syscall doesn't have a kernel defconfig option to disable it, always on
        #define RET_VAL 0
        //#DEFINE ERRNO_OVERRIDE
        
        int prlimit(pid_t pid, int resource, const struct rlimit *new_limit, struct rlimit *old_limit) {
            #ifdef ERRNO_OVERRIDE
                errno = ERRNO_OVERRIDE;
                #undef ERRNO_OVERRIDE
            #endif
            return RET_VAL;
        }
        #undef RET_VAL
EOF
}
