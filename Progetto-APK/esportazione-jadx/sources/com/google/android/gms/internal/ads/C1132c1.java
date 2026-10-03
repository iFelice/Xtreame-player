package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.c1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1132c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18142a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f18143b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1339g1 f18144c = new C1339g1();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C1184d1 f18145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f18148g;

    public final long a(M m7, int i8) {
        byte[] bArr = this.f18142a;
        m7.h(0, bArr, i8);
        long j8 = 0;
        for (int i9 = 0; i9 < i8; i9++) {
            j8 = (j8 << 8) | ((long) (bArr[i9] & 255));
        }
        return j8;
    }
}
