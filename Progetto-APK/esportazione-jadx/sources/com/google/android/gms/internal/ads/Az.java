package com.google.android.gms.internal.ads;

import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class Az extends AbstractC2217wz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f12081G;

    public Az(Object obj) {
        this.f12081G = obj;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2217wz
    public final AbstractC2217wz a(C2064u1 c2064u1) {
        Object objApply = c2064u1.apply(this.f12081G);
        AbstractC2987b.w0(objApply, "the Function passed to Optional.transform() must not return null.");
        return new Az(objApply);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2217wz
    public final Object b() {
        return this.f12081G;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Az) {
            return this.f12081G.equals(((Az) obj).f12081G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12081G.hashCode() + 1502476572;
    }

    public final String toString() {
        return p000a.r.g("Optional.of(", this.f12081G.toString(), ")");
    }
}
