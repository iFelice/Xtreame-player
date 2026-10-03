package L5;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[][] f4708c = {new int[]{21522, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f4709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte f4710b;

    public c(int i8) {
        int i9 = (i8 >> 3) & 3;
        if (i9 < 0 || i9 >= 4) {
            throw new IllegalArgumentException();
        }
        this.f4709a = b.f4705I[i9];
        this.f4710b = (byte) (i8 & 7);
    }

    public static c a(int i8, int i9) {
        int iBitCount;
        int[][] iArr = f4708c;
        int i10 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        int i11 = 0;
        for (int i12 = 0; i12 < 32; i12++) {
            int[] iArr2 = iArr[i12];
            int i13 = iArr2[0];
            if (i13 == i8 || i13 == i9) {
                return new c(iArr2[1]);
            }
            int iBitCount2 = Integer.bitCount(i8 ^ i13);
            if (iBitCount2 < i10) {
                i11 = iArr2[1];
                i10 = iBitCount2;
            }
            if (i8 != i9 && (iBitCount = Integer.bitCount(i13 ^ i9)) < i10) {
                i11 = iArr2[1];
                i10 = iBitCount;
            }
        }
        if (i10 <= 3) {
            return new c(i11);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f4709a == cVar.f4709a && this.f4710b == cVar.f4710b;
    }

    public final int hashCode() {
        return (this.f4709a.ordinal() << 3) | this.f4710b;
    }
}
