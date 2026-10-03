package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1204dL {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f18322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AbstractC0774Ie f18323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2190wN f18325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f18326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AbstractC0774Ie f18327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f18328g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C2190wN f18329h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f18330i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f18331j;

    public C1204dL(long j8, AbstractC0774Ie abstractC0774Ie, int i8, C2190wN c2190wN, long j9, AbstractC0774Ie abstractC0774Ie2, int i9, C2190wN c2190wN2, long j10, long j11) {
        this.f18322a = j8;
        this.f18323b = abstractC0774Ie;
        this.f18324c = i8;
        this.f18325d = c2190wN;
        this.f18326e = j9;
        this.f18327f = abstractC0774Ie2;
        this.f18328g = i9;
        this.f18329h = c2190wN2;
        this.f18330i = j10;
        this.f18331j = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1204dL.class == obj.getClass()) {
            C1204dL c1204dL = (C1204dL) obj;
            if (this.f18322a == c1204dL.f18322a && this.f18324c == c1204dL.f18324c && this.f18326e == c1204dL.f18326e && this.f18328g == c1204dL.f18328g && this.f18330i == c1204dL.f18330i && this.f18331j == c1204dL.f18331j && com.google.android.gms.internal.measurement.H1.E(this.f18323b, c1204dL.f18323b) && com.google.android.gms.internal.measurement.H1.E(this.f18325d, c1204dL.f18325d) && com.google.android.gms.internal.measurement.H1.E(this.f18327f, c1204dL.f18327f) && com.google.android.gms.internal.measurement.H1.E(this.f18329h, c1204dL.f18329h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f18322a), this.f18323b, Integer.valueOf(this.f18324c), this.f18325d, Long.valueOf(this.f18326e), this.f18327f, Integer.valueOf(this.f18328g), this.f18329h, Long.valueOf(this.f18330i), Long.valueOf(this.f18331j)});
    }
}
