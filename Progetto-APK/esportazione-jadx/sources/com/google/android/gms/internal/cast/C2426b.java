package com.google.android.gms.internal.cast;

import androidx.leanback.widget.C0484j;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2426b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f22632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f22633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f22634c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicInteger f22635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f22636e;

    public C2426b(C0484j c0484j) {
        this.f22636e = c0484j.f9298H;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f22632a = jCurrentTimeMillis;
        this.f22633b = jCurrentTimeMillis;
        this.f22635d = new AtomicInteger(1);
    }
}
