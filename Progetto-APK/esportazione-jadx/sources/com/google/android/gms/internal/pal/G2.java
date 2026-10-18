package com.google.android.gms.internal.pal;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class G2 extends I2 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final G2 f23533G = new G2();

    @Override // com.google.android.gms.internal.pal.I2
    public final I2 a(H2 h8) {
        h8.getClass();
        return f23533G;
    }

    @Override // com.google.android.gms.internal.pal.I2
    public final Object b() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.pal.I2
    public final Object c(Serializable serializable) {
        return serializable;
    }

    @Override // com.google.android.gms.internal.pal.I2
    public final boolean d() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
