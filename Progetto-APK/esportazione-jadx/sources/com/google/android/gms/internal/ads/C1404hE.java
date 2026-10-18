package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1404hE {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AC f19067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f19070d;

    public /* synthetic */ C1404hE(AC ac, int i8, String str, String str2) {
        this.f19067a = ac;
        this.f19068b = i8;
        this.f19069c = str;
        this.f19070d = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1404hE)) {
            return false;
        }
        C1404hE c1404hE = (C1404hE) obj;
        return this.f19067a == c1404hE.f19067a && this.f19068b == c1404hE.f19068b && this.f19069c.equals(c1404hE.f19069c) && this.f19070d.equals(c1404hE.f19070d);
    }

    public final int hashCode() {
        return Objects.hash(this.f19067a, Integer.valueOf(this.f19068b), this.f19069c, this.f19070d);
    }

    public final String toString() {
        return "(status=" + this.f19067a + ", keyId=" + this.f19068b + ", keyType='" + this.f19069c + "', keyPrefix='" + this.f19070d + "')";
    }
}
