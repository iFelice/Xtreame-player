package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class NG {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f14895a;

    public NG(byte[] bArr, int i8) {
        byte[] bArr2 = new byte[i8];
        this.f14895a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i8);
    }

    public static NG a(byte[] bArr) {
        if (bArr != null) {
            return new NG(bArr, bArr.length);
        }
        throw new NullPointerException("data must be non-null");
    }

    public final byte[] b() {
        byte[] bArr = this.f14895a;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof NG) {
            return Arrays.equals(((NG) obj).f14895a, this.f14895a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f14895a);
    }

    public final String toString() {
        byte[] bArr = this.f14895a;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b8 : bArr) {
            sb.append("0123456789abcdef".charAt((b8 & 255) >> 4));
            sb.append("0123456789abcdef".charAt(b8 & 15));
        }
        return p000a.r.g("Bytes(", sb.toString(), ")");
    }
}
