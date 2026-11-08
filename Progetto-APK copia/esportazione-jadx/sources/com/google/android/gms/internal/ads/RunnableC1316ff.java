package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1316ff implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ String f18777G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f18778H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f18779I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ int f18780J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ long f18781K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ long f18782L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ boolean f18783M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ int f18784N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ int f18785O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final /* synthetic */ AbstractC1522jf f18786P;

    public RunnableC1316ff(AbstractC1522jf abstractC1522jf, String str, String str2, int i8, int i9, long j8, long j9, boolean z7, int i10, int i11) {
        this.f18777G = str;
        this.f18778H = str2;
        this.f18779I = i8;
        this.f18780J = i9;
        this.f18781K = j8;
        this.f18782L = j9;
        this.f18783M = z7;
        this.f18784N = i10;
        this.f18785O = i11;
        this.f18786P = abstractC1522jf;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.f18777G);
        map.put("cachedSrc", this.f18778H);
        map.put("bytesLoaded", Integer.toString(this.f18779I));
        map.put("totalBytes", Integer.toString(this.f18780J));
        map.put("bufferedDuration", Long.toString(this.f18781K));
        map.put("totalDuration", Long.toString(this.f18782L));
        map.put("cacheReady", true != this.f18783M ? "0" : "1");
        map.put("playerCount", Integer.toString(this.f18784N));
        map.put("playerPreparedCount", Integer.toString(this.f18785O));
        AbstractC1522jf.k(this.f18786P, map);
    }
}
