package com.google.android.gms.internal.ads;

import java.util.HashMap;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ef, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1264ef implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ String f18529G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f18530H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f18531I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ long f18532J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ long f18533K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ long f18534L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ long f18535M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ boolean f18536N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ int f18537O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final /* synthetic */ int f18538P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final /* synthetic */ AbstractC1522jf f18539Q;

    public RunnableC1264ef(AbstractC1522jf abstractC1522jf, String str, String str2, long j8, long j9, long j10, long j11, long j12, boolean z7, int i8, int i9) {
        this.f18529G = str;
        this.f18530H = str2;
        this.f18531I = j8;
        this.f18532J = j9;
        this.f18533K = j10;
        this.f18534L = j11;
        this.f18535M = j12;
        this.f18536N = z7;
        this.f18537O = i8;
        this.f18538P = i9;
        this.f18539Q = abstractC1522jf;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.f18529G);
        map.put("cachedSrc", this.f18530H);
        map.put("bufferedDuration", Long.toString(this.f18531I));
        map.put("totalDuration", Long.toString(this.f18532J));
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue()) {
            map.put("qoeLoadedBytes", Long.toString(this.f18533K));
            map.put("qoeCachedBytes", Long.toString(this.f18534L));
            map.put("totalBytes", Long.toString(this.f18535M));
            p083k3.l.f25980A.f25990j.getClass();
            map.put("reportTime", Long.toString(System.currentTimeMillis()));
        }
        map.put("cacheReady", true != this.f18536N ? "0" : "1");
        map.put("playerCount", Integer.toString(this.f18537O));
        map.put("playerPreparedCount", Integer.toString(this.f18538P));
        AbstractC1522jf.k(this.f18539Q, map);
    }
}
