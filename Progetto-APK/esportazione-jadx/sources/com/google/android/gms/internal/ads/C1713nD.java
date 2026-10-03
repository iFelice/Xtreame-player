package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1713nD extends OC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1661mD f20079a;

    public C1713nD(C1661mD c1661mD) {
        this.f20079a = c1661mD;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f20079a != C1661mD.f19922d;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C1713nD) && ((C1713nD) obj).f20079a == this.f20079a;
    }

    public final int hashCode() {
        return Objects.hash(C1713nD.class, this.f20079a);
    }

    public final String toString() {
        return p000a.r.g("ChaCha20Poly1305 Parameters (variant: ", this.f20079a.f19923a, ")");
    }
}
