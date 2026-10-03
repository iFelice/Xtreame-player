package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2190wN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f21690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f21691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f21692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f21693d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f21694e;

    public C2190wN(Object obj, int i8, int i9, long j8, int i10) {
        this.f21690a = obj;
        this.f21691b = i8;
        this.f21692c = i9;
        this.f21693d = j8;
        this.f21694e = i10;
    }

    public final C2190wN a(Object obj) {
        return this.f21690a.equals(obj) ? this : new C2190wN(obj, this.f21691b, this.f21692c, this.f21693d, this.f21694e);
    }

    public final boolean b() {
        return this.f21691b != -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2190wN)) {
            return false;
        }
        C2190wN c2190wN = (C2190wN) obj;
        return this.f21690a.equals(c2190wN.f21690a) && this.f21691b == c2190wN.f21691b && this.f21692c == c2190wN.f21692c && this.f21693d == c2190wN.f21693d && this.f21694e == c2190wN.f21694e;
    }

    public final int hashCode() {
        return ((((((((this.f21690a.hashCode() + 527) * 31) + this.f21691b) * 31) + this.f21692c) * 31) + ((int) this.f21693d)) * 31) + this.f21694e;
    }

    public C2190wN(Object obj, long j8) {
        this(obj, -1, -1, j8, -1);
    }

    public C2190wN(Object obj, int i8, long j8) {
        this(obj, -1, -1, j8, i8);
    }
}
