package p130q5;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f29618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f29619b;

    public g(int i8, int i9) {
        this.f29618a = i8;
        this.f29619b = i9;
    }

    public abstract byte[] a();

    public abstract byte[] b(int i8, byte[] bArr);

    public boolean c() {
        return false;
    }

    public g d() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public final String toString() {
        char c8;
        int i8 = this.f29618a;
        byte[] bArrB = new byte[i8];
        int i9 = this.f29619b;
        StringBuilder sb = new StringBuilder((i8 + 1) * i9);
        for (int i10 = 0; i10 < i9; i10++) {
            bArrB = b(i10, bArrB);
            for (int i11 = 0; i11 < i8; i11++) {
                int i12 = bArrB[i11] & 255;
                if (i12 < 64) {
                    c8 = '#';
                } else if (i12 < 128) {
                    c8 = '+';
                } else {
                    c8 = i12 < 192 ? '.' : ' ';
                }
                sb.append(c8);
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
