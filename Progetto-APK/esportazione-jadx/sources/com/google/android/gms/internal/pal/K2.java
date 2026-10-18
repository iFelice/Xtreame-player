package com.google.android.gms.internal.pal;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class K2 extends I2 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f23578G;

    public K2(Object obj) {
        this.f23578G = obj;
    }

    @Override // com.google.android.gms.internal.pal.I2
    public final I2 a(H2 h8) {
        return new K2(h8.zza(this.f23578G));
    }

    @Override // com.google.android.gms.internal.pal.I2
    public final Object b() {
        return this.f23578G;
    }

    @Override // com.google.android.gms.internal.pal.I2
    public final Object c(Serializable serializable) {
        return this.f23578G;
    }

    @Override // com.google.android.gms.internal.pal.I2
    public final boolean d() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof K2) {
            return this.f23578G.equals(((K2) obj).f23578G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f23578G.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f23578G + ")";
    }
}
