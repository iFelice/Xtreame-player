package A4;

import E3.f;
import java.math.RoundingMode;
import java.util.Arrays;
import p027d2.v;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char[] f644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f645c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f646d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f648f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final byte[] f649g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f650h;

    /* JADX WARN: Illegal instructions before constructor call */
    public a(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i8 = 0; i8 < cArr.length; i8++) {
            char c8 = cArr[i8];
            if (!(c8 < 128)) {
                throw new IllegalArgumentException(v.n("Non-ASCII character: %s", Character.valueOf(c8)));
            }
            if (!(bArr[c8] == -1)) {
                throw new IllegalArgumentException(v.n("Duplicate character: %s", Character.valueOf(c8)));
            }
            bArr[c8] = (byte) i8;
        }
        this(str, cArr, bArr, false);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f650h == aVar.f650h && Arrays.equals(this.f644b, aVar.f644b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f644b) + (this.f650h ? 1231 : 1237);
    }

    public final String toString() {
        return this.f643a;
    }

    public a(String str, char[] cArr, byte[] bArr, boolean z7) {
        str.getClass();
        this.f643a = str;
        cArr.getClass();
        this.f644b = cArr;
        try {
            int iS = f.s(cArr.length, RoundingMode.UNNECESSARY);
            this.f646d = iS;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iS);
            int i8 = 1 << (3 - iNumberOfTrailingZeros);
            this.f647e = i8;
            this.f648f = iS >> iNumberOfTrailingZeros;
            this.f645c = cArr.length - 1;
            this.f649g = bArr;
            boolean[] zArr = new boolean[i8];
            for (int i9 = 0; i9 < this.f648f; i9++) {
                zArr[f.j(i9 * 8, this.f646d, RoundingMode.CEILING)] = true;
            }
            this.f650h = z7;
        } catch (ArithmeticException e8) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e8);
        }
    }
}
