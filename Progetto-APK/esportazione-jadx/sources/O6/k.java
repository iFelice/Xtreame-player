package O6;

import N6.u;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f5679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f5680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f5681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f5682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f5683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final g f5684f;

    static {
        String property;
        int i8 = u.f4999a;
        try {
            property = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            property = "DefaultDispatcher";
        }
        f5679a = property;
        f5680b = com.bumptech.glide.d.r("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        int i9 = u.f4999a;
        if (i9 < 2) {
            i9 = 2;
        }
        f5681c = com.bumptech.glide.d.s("kotlinx.coroutines.scheduler.core.pool.size", i9, 1, 0, 8);
        f5682d = com.bumptech.glide.d.s("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4);
        f5683e = TimeUnit.SECONDS.toNanos(com.bumptech.glide.d.r("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f5684f = g.f5674f;
    }
}
