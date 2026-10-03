package p095m1;

import W0.t;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final long[] f27201d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f27202a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27203b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f27204c;

    public static long a(byte[] bArr, int i8, boolean z7) {
        long j8 = ((long) bArr[0]) & 255;
        if (z7) {
            j8 &= ~f27201d[i8 - 1];
        }
        for (int i9 = 1; i9 < i8; i9++) {
            j8 = (j8 << 8) | (((long) bArr[i9]) & 255);
        }
        return j8;
    }

    public static int b(int i8) {
        for (int i9 = 0; i9 < 8; i9++) {
            if ((f27201d[i9] & ((long) i8)) != 0) {
                return i9 + 1;
            }
        }
        return -1;
    }

    public final long c(t tVar, boolean z7, boolean z8, int i8) {
        int i9 = this.f27203b;
        byte[] bArr = this.f27202a;
        if (i9 == 0) {
            if (!tVar.b(bArr, 0, 1, z7)) {
                return -1L;
            }
            int iB = b(bArr[0] & 255);
            this.f27204c = iB;
            if (iB == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f27203b = 1;
        }
        int i10 = this.f27204c;
        if (i10 > i8) {
            this.f27203b = 0;
            return -2L;
        }
        if (i10 != 1) {
            tVar.readFully(bArr, 1, i10 - 1);
        }
        this.f27203b = 0;
        return a(bArr, this.f27204c, z8);
    }
}
