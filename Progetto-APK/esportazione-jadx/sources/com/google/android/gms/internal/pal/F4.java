package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class F4 extends AbstractC2864y4 {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f23529Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final E4 f23530R;

    public F4(int i8, E4 e8) {
        this.f23529Q = i8;
        this.f23530R = e8;
    }

    public static F4 J0(int i8, E4 e8) throws GeneralSecurityException {
        if (i8 < 10 || i8 > 16) {
            throw new GeneralSecurityException(p000a.r.f("Invalid tag size for AesCmacParameters: ", i8));
        }
        return new F4(i8, e8);
    }

    public final int I0() {
        E4 e8 = E4.f23500e;
        int i8 = this.f23529Q;
        E4 e9 = this.f23530R;
        if (e9 == e8) {
            return i8;
        }
        if (e9 == E4.f23497b) {
            return i8 + 5;
        }
        if (e9 == E4.f23498c) {
            return i8 + 5;
        }
        if (e9 == E4.f23499d) {
            return i8 + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof F4)) {
            return false;
        }
        F4 f8 = (F4) obj;
        return f8.I0() == I0() && f8.f23530R == this.f23530R;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f23529Q), this.f23530R});
    }

    public final String toString() {
        return "AES-CMAC Parameters (variant: " + this.f23530R.f23501a + ", " + this.f23529Q + "-byte tags)";
    }
}
