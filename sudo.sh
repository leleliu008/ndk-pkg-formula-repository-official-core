summary  "allows a system administrator to give certain users (or groups of users) the ability to run some (or all) commands as root or another user while logging the commands and arguments."
homepage "https://www.sudo.ws"
url      "http://www.sudo.ws/dist/sudo-1.9.2.tar.gz"
sha256   "7c98d201f181c47152711b9f391e0f6b5545f3ef8926298a3e8bc6288e118314"

prepare() {
    sed_in_place '1i #include<sudo_compat.h>' include/compat/glob.h
}

build() {
    export CPPFLAGS="$CPPFLAGS -DLINE_MAX=2048"
    configure \
        ac_cv_func_faccessat=no \
        ac_cv_func_getttyent=no \
        ac_cv_func_ttyslot=no \
        ac_cv_header_utmps_h=no \
        ac_cv_member_struct_utmps_ut_id=no
}
