package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.df, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1213df implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ String f18341G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f18342H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f18343I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ int f18344J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ AbstractC1522jf f18345K;

    public RunnableC1213df(AbstractC1522jf abstractC1522jf, String str, String str2, int i8, int i9) {
        this.f18341G = str;
        this.f18342H = str2;
        this.f18343I = i8;
        this.f18344J = i9;
        this.f18345K = abstractC1522jf;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.f18341G);
        map.put("cachedSrc", this.f18342H);
        map.put("bytesLoaded", Integer.toString(this.f18343I));
        map.put("totalBytes", Integer.toString(this.f18344J));
        map.put("cacheReady", "0");
        AbstractC1522jf.k(this.f18345K, map);
    }
}
