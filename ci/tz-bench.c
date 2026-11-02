/* What does ooRexx's SystemInterpreter::getCurrentTime() cost on this system?
   It does localtime() + gmtime() + mktime() (mktime only to get the time zone
   offset) once for every clause that calls DATE() or TIME().  Each part is
   timed separately, and the alternative of reading the offset from
   localtime()'s tm_gmtoff.  Usage: tz-bench [calls]                         */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>

static double now(void)
{
    struct timespec t;
    clock_gettime(CLOCK_MONOTONIC, &t);
    return t.tv_sec + t.tv_nsec / 1e9;
}

int main(int argc, char **argv)
{
    long n = argc > 1 ? atol(argv[1]) : 100000, i;
    volatile long sink = 0;
    struct timeval tv;
    double t0, t;
    const char *tz = getenv("TZ");

    printf("TZ=%s, %ld calls each\n", tz ? tz : "(unset)", n);

    t0 = now();
    for (i = 0; i < n; i++)
    {
        gettimeofday(&tv, NULL);
        struct tm *l = localtime(&tv.tv_sec);
        sink += l->tm_hour;
        struct tm *g = gmtime(&tv.tv_sec);
        g->tm_isdst = -1;
        sink += tv.tv_sec - mktime(g);
    }
    t = now() - t0;
    printf("  getCurrentTime as now (localtime+gmtime+mktime): %10.3f us\n", t / n * 1e6);

    t0 = now();
    for (i = 0; i < n; i++)
    {
        gettimeofday(&tv, NULL);
        sink += localtime(&tv.tv_sec)->tm_hour;
    }
    t = now() - t0;
    printf("  localtime alone:                                 %10.3f us\n", t / n * 1e6);

    t0 = now();
    for (i = 0; i < n; i++)
    {
        gettimeofday(&tv, NULL);
        struct tm *g = gmtime(&tv.tv_sec);
        g->tm_isdst = -1;
        sink += mktime(g);
    }
    t = now() - t0;
    printf("  gmtime+mktime alone:                             %10.3f us\n", t / n * 1e6);

    t0 = now();
    for (i = 0; i < n; i++)
    {
        gettimeofday(&tv, NULL);
        struct tm l;
        localtime_r(&tv.tv_sec, &l);
        sink += l.tm_hour + l.tm_gmtoff;
    }
    t = now() - t0;
    printf("  localtime_r with tm_gmtoff (no mktime):          %10.3f us\n", t / n * 1e6);

    /* the two offsets agree? */
    gettimeofday(&tv, NULL);
    struct tm l;
    localtime_r(&tv.tv_sec, &l);
    struct tm *g = gmtime(&tv.tv_sec);
    g->tm_isdst = -1;
    printf("  offset: mktime %ld s, tm_gmtoff %ld s\n", (long)(tv.tv_sec - mktime(g)), (long)l.tm_gmtoff);
    return (int)(sink & 0);
}
