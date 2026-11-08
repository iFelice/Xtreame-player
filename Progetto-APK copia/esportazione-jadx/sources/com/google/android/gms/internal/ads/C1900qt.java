package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1900qt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final D4.b f20648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f20649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final P3.a f20650c;

    public C1900qt(D4.b bVar, long j8, P3.a aVar) {
        this.f20648a = bVar;
        this.f20650c = aVar;
        ((P3.b) aVar).getClass();
        this.f20649b = SystemClock.elapsedRealtime() + j8;
    }
}
