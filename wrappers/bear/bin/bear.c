#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>
#include <limits.h>

int main(int argc, char* argv[]) {
    char selfExePath[PATH_MAX];

    int n = readlink("/proc/self/exe", selfExePath, PATH_MAX);

    if (n == -1) {
        perror("/proc/self/exe");
        return 1;
    }

    selfExePath[n] = '\0';

    ////////////////////////////////////////////////////

    int slashIndex = -1;

    char realExePath[n + 5];

    for (int i = 0; i < n; i++) {
        realExePath[i] = selfExePath[i];

        if (selfExePath[i] == '/') {
            slashIndex = i;
        }
    }

    realExePath[n    ] = '.';
    realExePath[n + 1] = 'e';
    realExePath[n + 2] = 'x';
    realExePath[n + 3] = 'e';
    realExePath[n + 4] = '\0';

    ////////////////////////////////////////////////////

    if (argv[1] == NULL || strcmp(argv[1], "intercept") == 0 || strcmp(argv[1], "citnames") == 0) {
        argv[0] = realExePath;
        execv (realExePath, argv);
        perror(realExePath);
        return 255;
    }

    ////////////////////////////////////////////////////

    char libexecFilePath[slashIndex + 30];

    for (int i = 0; i <= slashIndex; i++) {
        libexecFilePath[i] = selfExePath[i];
    }

    char * p = libexecFilePath + slashIndex + 1;

    const char * s = "../lib/bear/libexec.so";

    for (;;) {
        p[0] = s[0];

        if (p[0] == '\0') {
            break;
        }

        p++;
        s++;
    }

    ////////////////////////////////////////////////////

    char wrapperFilePath[slashIndex + 30];

    for (int i = 0; i <= slashIndex; i++) {
        wrapperFilePath[i] = selfExePath[i];
    }

    p = wrapperFilePath + slashIndex + 1;

    s = "../lib/bear/wrapper";

    for (;;) {
        p[0] = s[0];

        if (p[0] == '\0') {
            break;
        }

        p++;
        s++;
    }

    ////////////////////////////////////////////////////

    char wrapperdFilePath[slashIndex + 30];

    for (int i = 0; i <= slashIndex; i++) {
        wrapperdFilePath[i] = selfExePath[i];
    }

    p = wrapperdFilePath + slashIndex + 1;

    s = "../lib/bear/wrapper.d";

    for (;;) {
        p[0] = s[0];

        if (p[0] == '\0') {
            break;
        }

        p++;
        s++;
    }

    ////////////////////////////////////////////////////

    char* args[argc + 9];

    args[0] = realExePath;
    args[1] = (char*)"--bear-path"; 
    args[2] = selfExePath,
    args[3] = (char*)"--library";
    args[4] = libexecFilePath;
    args[5] = (char*)"--wrapper";
    args[6] = wrapperFilePath,
    args[7] = (char*)"--wrapper-dir";
    args[8] = wrapperdFilePath;

    n = 9;

    for (int i = 1; i < argc; i++) {
        args[n++] = argv[i];
    }

    args[n] = NULL;

    //for (int i = 0; args[i] != NULL; i++) {
    //    fprintf(stderr, "%d:%s\n", i, args[i]);
    //}

    execv (args[0], args);
    perror(args[0]);
    return 255;
}
