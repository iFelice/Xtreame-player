package p095m1;

import D0.U;
import W0.t;
import java.util.ArrayDeque;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f27078a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque f27079b = new ArrayDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e f27080c = new e();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public U f27081d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f27082e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f27083f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f27084g;

    public static String c(t tVar, int i8) {
        if (i8 == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        byte[] bArr = new byte[i8];
        tVar.readFully(bArr, 0, i8);
        while (i8 > 0 && bArr[i8 - 1] == 0) {
            i8--;
        }
        return new String(bArr, 0, i8);
    }

    public final double a(t tVar, int i8) {
        long jB = b(tVar, i8);
        return i8 == 4 ? Float.intBitsToFloat((int) jB) : Double.longBitsToDouble(jB);
    }

    public final long b(t tVar, int i8) {
        byte[] bArr = this.f27078a;
        tVar.readFully(bArr, 0, i8);
        long j8 = 0;
        for (int i9 = 0; i9 < i8; i9++) {
            j8 = (j8 << 8) | ((long) (bArr[i9] & 255));
        }
        return j8;
    }
}
