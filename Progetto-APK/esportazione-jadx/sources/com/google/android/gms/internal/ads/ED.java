package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ED extends OC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DD f12955a;

    public ED(DD dd) {
        this.f12955a = dd;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f12955a != DD.f12786d;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ED) && ((ED) obj).f12955a == this.f12955a;
    }

    public final int hashCode() {
        return Objects.hash(ED.class, this.f12955a);
    }

    public final String toString() {
        return p000a.r.g("XChaCha20Poly1305 Parameters (variant: ", this.f12955a.f12787a, ")");
    }
}
