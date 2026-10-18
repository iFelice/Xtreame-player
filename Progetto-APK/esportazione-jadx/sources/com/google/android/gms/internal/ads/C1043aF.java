package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1043aF extends AbstractC1146cF {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ZE f17850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final YE f17851d;

    public C1043aF(int i8, int i9, ZE ze, YE ye) {
        this.f17848a = i8;
        this.f17849b = i9;
        this.f17850c = ze;
        this.f17851d = ye;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f17850c != ZE.f17740e;
    }

    public final int b() {
        ZE ze = ZE.f17740e;
        int i8 = this.f17849b;
        ZE ze2 = this.f17850c;
        if (ze2 == ze) {
            return i8;
        }
        if (ze2 == ZE.f17737b || ze2 == ZE.f17738c || ze2 == ZE.f17739d) {
            return i8 + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1043aF)) {
            return false;
        }
        C1043aF c1043aF = (C1043aF) obj;
        return c1043aF.f17848a == this.f17848a && c1043aF.b() == b() && c1043aF.f17850c == this.f17850c && c1043aF.f17851d == this.f17851d;
    }

    public final int hashCode() {
        return Objects.hash(C1043aF.class, Integer.valueOf(this.f17848a), Integer.valueOf(this.f17849b), this.f17850c, this.f17851d);
    }

    public final String toString() {
        StringBuilder sbQ = com.google.protobuf.U2.q("HMAC Parameters (variant: ", String.valueOf(this.f17850c), ", hashType: ", String.valueOf(this.f17851d), ", ");
        sbQ.append(this.f17849b);
        sbQ.append("-byte tags, and ");
        return p000a.r.h(sbQ, this.f17848a, "-byte key)");
    }
}
