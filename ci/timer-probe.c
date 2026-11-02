/* Does pthread_cond_timedwait (CLOCK_REALTIME deadline, as ooRexx's
   SysSemaphore::wait uses for .Alarm and .Ticker) return before its
   deadline?  Also: how far do CLOCK_REALTIME and CLOCK_MONOTONIC drift. */
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>

static double now(clockid_t c) { struct timespec t; clock_gettime(c, &t); return t.tv_sec + t.tv_nsec / 1e9; }

int main(int argc, char **argv)
{
    int n = argc > 1 ? atoi(argv[1]) : 40, ms = argc > 2 ? atoi(argv[2]) : 500;
    pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;
    pthread_cond_t c = PTHREAD_COND_INITIALIZER;
    double r0 = now(CLOCK_REALTIME), m0 = now(CLOCK_MONOTONIC);
    double minr = 1e9, maxr = 0, minm = 1e9, maxm = 0; int early = 0, other = 0;
    for (int i = 0; i < n; i++) {
        struct timespec ts; clock_gettime(CLOCK_REALTIME, &ts);
        double rs = ts.tv_sec + ts.tv_nsec / 1e9, ms0 = now(CLOCK_MONOTONIC);
        ts.tv_nsec += (long)(ms % 1000) * 1000000L; ts.tv_sec += ms / 1000;
        if (ts.tv_nsec >= 1000000000L) { ts.tv_nsec -= 1000000000L; ts.tv_sec++; }
        pthread_mutex_lock(&m);
        int rc = pthread_cond_timedwait(&c, &m, &ts);
        pthread_mutex_unlock(&m);
        double dr = (now(CLOCK_REALTIME) - rs) * 1000, dm = (now(CLOCK_MONOTONIC) - ms0) * 1000;
        if (rc != ETIMEDOUT) other++;
        if (dr < ms - 0.5) { early++; printf("early: rc=%d realtime %.3f ms, monotonic %.3f ms\n", rc, dr, dm); }
        if (dr < minr) minr = dr;
        if (dr > maxr) maxr = dr;
        if (dm < minm) minm = dm;
        if (dm > maxm) maxm = dm;
    }
    printf("%d waits of %d ms: realtime %.3f..%.3f ms, monotonic %.3f..%.3f ms; early %d, rc!=ETIMEDOUT %d\n",
           n, ms, minr, maxr, minm, maxm, early, other);
    printf("realtime - monotonic drift over the run: %.3f ms\n",
           ((now(CLOCK_REALTIME) - r0) - (now(CLOCK_MONOTONIC) - m0)) * 1000);
    return 0;
}
