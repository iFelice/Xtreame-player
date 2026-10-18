package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1041aD extends OC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ZC f17844c;

    public C1041aD(int i8, int i9, ZC zc) {
        this.f17842a = i8;
        this.f17843b = i9;
        this.f17844c = zc;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f17844c != ZC.f17735d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1041aD)) {
            return false;
        }
        C1041aD c1041aD = (C1041aD) obj;
        return c1041aD.f17842a == this.f17842a && c1041aD.f17843b == this.f17843b && c1041aD.f17844c == this.f17844c;
    }

    public final int hashCode() {
        return Objects.hash(C1041aD.class, Integer.valueOf(this.f17842a), Integer.valueOf(this.f17843b), 16, this.f17844c);
    }

    public final String toString() {
        StringBuilder sbP = com.google.protobuf.U2.p("AesEax Parameters (variant: ", String.valueOf(this.f17844c), ", ");
        sbP.append(this.f17843b);
        sbP.append("-byte IV, 16-byte tag, and ");
        return p000a.r.h(sbP, this.f17842a, "-byte key)");
    }
}
