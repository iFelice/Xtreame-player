package Q6;

import z4.q0;

/* JADX INFO: renamed from: Q6.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0329b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f6047a = new h();

    public static final boolean a(int i8, int i9, int i10, byte[] bArr, byte[] bArr2) {
        q0.h(bArr, "a");
        q0.h(bArr2, "b");
        for (int i11 = 0; i11 < i10; i11++) {
            if (bArr[i11 + i8] != bArr2[i11 + i9]) {
                return false;
            }
        }
        return true;
    }

    public static final void b(long j8, long j9, long j10) {
        if ((j9 | j10) < 0 || j9 > j8 || j8 - j9 < j10) {
            StringBuilder sbD = p148t.a.d("size=", j8, " offset=");
            sbD.append(j9);
            sbD.append(" byteCount=");
            sbD.append(j10);
            throw new ArrayIndexOutOfBoundsException(sbD.toString());
        }
    }
}
