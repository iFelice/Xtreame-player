package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1505jD extends OC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f19445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1455iD f19446b;

    public C1505jD(int i8, C1455iD c1455iD) {
        this.f19445a = i8;
        this.f19446b = c1455iD;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f19446b != C1455iD.f19279d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1505jD)) {
            return false;
        }
        C1505jD c1505jD = (C1505jD) obj;
        return c1505jD.f19445a == this.f19445a && c1505jD.f19446b == this.f19446b;
    }

    public final int hashCode() {
        return Objects.hash(C1505jD.class, Integer.valueOf(this.f19445a), this.f19446b);
    }

    public final String toString() {
        return p000a.r.h(com.google.protobuf.U2.p("AesGcmSiv Parameters (variant: ", String.valueOf(this.f19446b), ", "), this.f19445a, "-byte key)");
    }
}
