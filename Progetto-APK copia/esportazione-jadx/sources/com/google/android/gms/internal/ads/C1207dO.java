package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1207dO {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f18334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f18335b;

    public C1207dO(long j8, long j9) {
        this.f18334a = j8;
        this.f18335b = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1207dO)) {
            return false;
        }
        C1207dO c1207dO = (C1207dO) obj;
        return this.f18334a == c1207dO.f18334a && this.f18335b == c1207dO.f18335b;
    }

    public final int hashCode() {
        return (((int) this.f18334a) * 31) + ((int) this.f18335b);
    }
}
