/*
 * What do listxattr() and extattr_list_file() return on NetBSD?
 *
 * ooRexx's SysUnix.testGroup TEST_XATTR sets two user.* attributes and then
 * SysListXattr() lists only one of them. SysListXattr calls
 * listxattr(f, NULL, 0) for the size, then listxattr(f, buf, size) (without
 * checking its result) and splits buf on NULs. This probe does the same steps
 * and dumps every buffer, so we can see whether the size, the format or the
 * contents differ from what Linux returns.
 *
 * Usage: xattr-probe <file>     (the file is created/truncated)
 */
#include <sys/types.h>
#include <sys/xattr.h>
#ifdef __NetBSD__
#include <sys/extattr.h>
#endif
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

static void dump(const char *what, const char *buf, ssize_t n)
{
    printf("  %s: %zd bytes:", what, n);
    for (ssize_t i = 0; i < n; i++)
    {
        unsigned char c = (unsigned char)buf[i];
        if (c >= 32 && c < 127) printf(" %c", c);
        else printf(" \\x%02x", c);
    }
    printf("\n");
}

/* split on NULs exactly like SysListxattr does */
static void split(const char *buf, ssize_t sz)
{
    int k = 0;
    while (sz > 0)
    {
        printf("  item %d: \"%s\"\n", ++k, buf);
        sz -= strlen(buf) + 1;
        buf += strlen(buf) + 1;
    }
    printf("  -> %d item(s)\n", k);
}

static void list(const char *f)
{
    errno = 0;
    ssize_t sz = listxattr(f, NULL, 0);
    printf(" listxattr(f, NULL, 0) = %zd (errno %d %s)\n", sz, errno, sz < 0 ? strerror(errno) : "");
    if (sz < 0) return;

    char *exact = calloc(1, sz + 1);
    errno = 0;
    ssize_t r = listxattr(f, exact, sz);
    printf(" listxattr(f, buf, %zd) = %zd (errno %d %s)\n", sz, r, errno, r < 0 ? strerror(errno) : "");
    dump("buffer of the queried size", exact, sz);
    printf(" split as SysListxattr does (size %zd):\n", sz);
    split(exact, sz);

    char big[4096];
    memset(big, 0, sizeof big);
    errno = 0;
    r = listxattr(f, big, sizeof big);
    printf(" listxattr(f, buf, 4096) = %zd (errno %d %s)\n", r, errno, r < 0 ? strerror(errno) : "");
    if (r > 0) dump("4096-byte buffer", big, r);
    free(exact);

#ifdef __NetBSD__
    char raw[4096];
    ssize_t e = extattr_list_file(f, EXTATTR_NAMESPACE_USER, NULL, 0);
    printf(" extattr_list_file(user, NULL, 0) = %zd (errno %d)\n", e, e < 0 ? errno : 0);
    e = extattr_list_file(f, EXTATTR_NAMESPACE_USER, raw, sizeof raw);
    printf(" extattr_list_file(user, buf, 4096) = %zd (errno %d)\n", e, e < 0 ? errno : 0);
    if (e > 0) dump("extattr user list (length-prefixed)", raw, e);
#endif
}

static void set(const char *f, const char *name, const char *value)
{
    errno = 0;
    int rc = setxattr(f, name, value, strlen(value), 0);
    printf("setxattr(%s, \"%s\") = %d (errno %d %s)\n", name, value, rc, errno, rc < 0 ? strerror(errno) : "");
}

static void get(const char *f, const char *name)
{
    char buf[256];
    memset(buf, 0, sizeof buf);
    errno = 0;
    ssize_t sz = getxattr(f, name, NULL, 0);
    ssize_t r = getxattr(f, name, buf, sizeof buf - 1);
    printf("getxattr(%s): size query %zd, read %zd \"%s\" (errno %d)\n", name, sz, r, r > 0 ? buf : "", errno);
}

int main(int argc, char **argv)
{
    const char *f = argc > 1 ? argv[1] : "xattr-probe.tmp";
    int fd = open(f, O_CREAT | O_TRUNC | O_WRONLY, 0644);
    if (fd < 0) { perror(f); return 1; }
    if (write(fd, "test_xattr", 10) != 10) perror("write");
    close(fd);

    printf("== file %s, fresh\n", f);
    list(f);
    set(f, "user.author", "ooRexx");
    printf("== after one attribute\n");
    list(f);
    set(f, "user.mime_type", "text/x-oorexx");
    printf("== after two attributes\n");
    list(f);
    get(f, "user.author");
    get(f, "user.mime_type");
    errno = 0;
    int rc = removexattr(f, "user.author");
    printf("removexattr(user.author) = %d (errno %d)\n", rc, rc < 0 ? errno : 0);
    printf("== after removing user.author\n");
    list(f);
    unlink(f);
    return 0;
}
