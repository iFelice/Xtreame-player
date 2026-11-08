package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.se, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1988se {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C1936re f20906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C1936re f20907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1936re f20908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C1833pe f20909d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C1936re f20910e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C1936re f20911f;

    /* JADX WARN: Code duplicated, block: B:11:0x0062  */
    static {
        ThreadPoolExecutor threadPoolExecutor;
        J7 j8 = Q7.Ca;
        C3099q c3099q = C3099q.f26624d;
        if (c3099q.f26627c.b(j8) != null) {
            O7 o7 = c3099q.f26627c;
            if (((Boolean) o7.b(j8)).booleanValue()) {
                J7 j9 = Q7.Da;
                if (o7.b(j9) != null) {
                    J7 j10 = Q7.Ea;
                    if (o7.b(j10) != null) {
                        threadPoolExecutor = new ThreadPoolExecutor(((Integer) o7.b(j9)).intValue(), ((Integer) o7.b(j9)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new T4("Default"));
                        threadPoolExecutor.allowCoreThreadTimeOut(((Boolean) o7.b(j10)).booleanValue());
                    } else {
                        threadPoolExecutor = new ThreadPoolExecutor(2, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new T4("Default"));
                    }
                } else {
                    threadPoolExecutor = new ThreadPoolExecutor(2, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new T4("Default"));
                }
            } else {
                threadPoolExecutor = new ThreadPoolExecutor(2, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new T4("Default"));
            }
        } else {
            threadPoolExecutor = new ThreadPoolExecutor(2, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new T4("Default"));
        }
        f20906a = new C1936re((Executor) threadPoolExecutor);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(5, 5, 10L, timeUnit, new LinkedBlockingQueue(), new T4("Loader"));
        threadPoolExecutor2.allowCoreThreadTimeOut(true);
        f20907b = new C1936re((Executor) threadPoolExecutor2);
        ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(1, 1, 10L, timeUnit, new LinkedBlockingQueue(), new T4("Activeview"));
        threadPoolExecutor3.allowCoreThreadTimeOut(true);
        f20908c = new C1936re((Executor) threadPoolExecutor3);
        f20909d = new C1833pe(3, new T4("Schedule"));
        f20910e = new C1936re(new ExecutorC1885qe());
        f20911f = new C1936re(XB.f17385G);
    }
}
