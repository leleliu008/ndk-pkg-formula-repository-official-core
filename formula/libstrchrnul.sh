pkg_set summary "returns a pointer to the first occurrence of the character c in the string s"
pkg_set webpage "https://linux.die.net/man/3/strchrnul"
pkg_set src.url "dir:///dev/null"

build() {
    echo "char* strchrnul(const char *s, int c);" > strchrnul.h &&

    # http://git.musl-libc.org/cgit/musl/plain/src/string/strchrnul.c
    cat > strchrnul.c <<EOF
#include <string.h>
#include <stdint.h>
#include <limits.h>

#define ALIGN (sizeof(size_t))
#define ONES ((size_t)-1/UCHAR_MAX)
#define HIGHS (ONES * (UCHAR_MAX/2+1))
#define HASZERO(x) ((x)-ONES & ~(x) & HIGHS)

char* strchrnul(const char *s, int c)
{
	c = (unsigned char)c;
	if (!c) return (char *)s + strlen(s);

#ifdef __GNUC__
	typedef size_t __attribute__((__may_alias__)) word;
	const word *w;
	for (; (uintptr_t)s % ALIGN; s++)
		if (!*s || *(unsigned char *)s == c) return (char *)s;
	size_t k = ONES * c;
	for (w = (void *)s; !HASZERO(*w) && !HASZERO(*w^k); w++);
	s = (void *)w;
#endif
	for (; *s && *(unsigned char *)s != c; s++);
	return (char *)s;
}
EOF
    run $CC $CFLAGS $CPPFLAGS -c -o strchrnul.o strchrnul.c
    run $CC $LDFLAGS -shared -o libstrchrnul.so strchrnul.o &&
    run $AR rsc libstrchrnul.a  strchrnul.o &&
    run install_incs strchrnul.h &&
    run install_libs libstrchrnul.a libstrchrnul.so
}
