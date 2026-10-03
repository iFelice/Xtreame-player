package com.google.android.gms.internal.pal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class Q6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f23635a;

    public Q6(byte[] bArr, int i8) {
        byte[] bArr2 = new byte[i8];
        this.f23635a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i8);
    }

    public static Q6 a(byte[] bArr) {
        if (bArr != null) {
            return new Q6(bArr, bArr.length);
        }
        throw new NullPointerException("data must be non-null");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Q6) {
            return Arrays.equals(((Q6) obj).f23635a, this.f23635a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f23635a);
    }

    public final String toString() {
        return p000a.r.g("Bytes(", AbstractC2864y4.o(this.f23635a), ")");
    }
}
