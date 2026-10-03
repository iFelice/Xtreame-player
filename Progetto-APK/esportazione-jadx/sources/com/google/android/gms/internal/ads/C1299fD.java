package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1299fD extends OC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18733a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1247eD f18734b;

    public C1299fD(int i8, C1247eD c1247eD) {
        this.f18733a = i8;
        this.f18734b = c1247eD;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f18734b != C1247eD.f18492d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1299fD)) {
            return false;
        }
        C1299fD c1299fD = (C1299fD) obj;
        return c1299fD.f18733a == this.f18733a && c1299fD.f18734b == this.f18734b;
    }

    public final int hashCode() {
        return Objects.hash(C1299fD.class, Integer.valueOf(this.f18733a), 12, 16, this.f18734b);
    }

    public final String toString() {
        return p000a.r.h(com.google.protobuf.U2.p("AesGcm Parameters (variant: ", String.valueOf(this.f18734b), ", 12-byte IV, 16-byte tag, and "), this.f18733a, "-byte key)");
    }
}
