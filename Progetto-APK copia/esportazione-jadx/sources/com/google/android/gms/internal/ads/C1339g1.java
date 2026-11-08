package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1339g1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long[] f18884d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18885a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18887c;

    public static long a(byte[] bArr, int i8, boolean z7) {
        long j8 = ((long) bArr[0]) & 255;
        if (z7) {
            j8 &= ~f18884d[i8 - 1];
        }
        for (int i9 = 1; i9 < i8; i9++) {
            j8 = (j8 << 8) | (((long) bArr[i9]) & 255);
        }
        return j8;
    }

    public final long b(M m7, boolean z7, boolean z8, int i8) {
        int i9;
        int i10 = this.f18886b;
        byte[] bArr = this.f18885a;
        if (i10 == 0) {
            if (!m7.b(bArr, 0, 1, z7)) {
                return -1L;
            }
            int i11 = bArr[0] & 255;
            int i12 = 0;
            while (true) {
                if (i12 >= 8) {
                    i9 = -1;
                    break;
                }
                i9 = i12 + 1;
                if ((f18884d[i12] & ((long) i11)) != 0) {
                    break;
                }
                i12 = i9;
            }
            this.f18887c = i9;
            if (i9 == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f18886b = 1;
        }
        int i13 = this.f18887c;
        if (i13 > i8) {
            this.f18886b = 0;
            return -2L;
        }
        if (i13 != 1) {
            m7.h(1, bArr, i13 - 1);
        }
        this.f18886b = 0;
        return a(bArr, this.f18887c, z8);
    }
}
