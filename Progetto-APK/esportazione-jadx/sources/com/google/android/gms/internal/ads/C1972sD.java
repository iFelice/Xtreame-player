package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1972sD extends OC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1920rD f20877b;

    public C1972sD(String str, C1920rD c1920rD) {
        this.f20876a = str;
        this.f20877b = c1920rD;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f20877b != C1920rD.f20693c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1972sD)) {
            return false;
        }
        C1972sD c1972sD = (C1972sD) obj;
        return c1972sD.f20876a.equals(this.f20876a) && c1972sD.f20877b.equals(this.f20877b);
    }

    public final int hashCode() {
        return Objects.hash(C1972sD.class, this.f20876a, this.f20877b);
    }

    public final String toString() {
        return "LegacyKmsAead Parameters (keyUri: " + this.f20876a + ", variant: " + this.f20877b.f20694a + ")";
    }
}
