package com.google.android.gms.internal.pal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class B3 implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final byte[] f23465G;

    public /* synthetic */ B3(byte[] bArr) {
        this.f23465G = Arrays.copyOf(bArr, bArr.length);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        B3 b8 = (B3) obj;
        byte[] bArr = this.f23465G;
        int length = bArr.length;
        int length2 = b8.f23465G.length;
        if (length != length2) {
            return length - length2;
        }
        for (int i8 = 0; i8 < bArr.length; i8++) {
            byte b9 = bArr[i8];
            byte b10 = b8.f23465G[i8];
            if (b9 != b10) {
                return b9 - b10;
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof B3) {
            return Arrays.equals(this.f23465G, ((B3) obj).f23465G);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f23465G);
    }

    public final String toString() {
        return AbstractC2864y4.o(this.f23465G);
    }
}
