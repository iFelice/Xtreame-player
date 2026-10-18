package p094m0;

import java.util.Arrays;
import p117p0.M;

/* JADX INFO: renamed from: m0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3120c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C3120c f26819c = new C3120c(new C3119b[0]);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C3119b f26820d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3119b[] f26822b;

    static {
        C3119b c3119b = new C3119b(0L, -1, -1, new int[0], new I[0], new long[0], 0L, false, new String[0], false);
        int[] iArr = c3119b.f26810f;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = c3119b.f26811g;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, -9223372036854775807L);
        f26820d = new C3119b(c3119b.f26805a, 0, c3119b.f26807c, iArrCopyOf, (I[]) Arrays.copyOf(c3119b.f26809e, 0), jArrCopyOf, c3119b.f26813i, c3119b.f26814j, (String[]) Arrays.copyOf(c3119b.f26812h, 0), c3119b.f26815k);
        M.L(1);
        M.L(2);
        M.L(3);
        M.L(4);
    }

    public C3120c(C3119b[] c3119bArr) {
        this.f26821a = c3119bArr.length;
        this.f26822b = c3119bArr;
    }

    public final C3119b a(int i8) {
        return i8 < 0 ? f26820d : this.f26822b[i8];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3120c.class != obj.getClass()) {
            return false;
        }
        C3120c c3120c = (C3120c) obj;
        return this.f26821a == c3120c.f26821a && Arrays.equals(this.f26822b, c3120c.f26822b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f26822b) + (((((this.f26821a * 961) + ((int) 0)) * 31) + ((int) (-9223372036854775807L))) * 961);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=[");
        int i8 = 0;
        while (true) {
            C3119b[] c3119bArr = this.f26822b;
            if (i8 >= c3119bArr.length) {
                sb.append("])");
                return sb.toString();
            }
            sb.append("adGroup(timeUs=");
            sb.append(c3119bArr[i8].f26805a);
            sb.append(", ads=[");
            for (int i9 = 0; i9 < c3119bArr[i8].f26810f.length; i9++) {
                sb.append("ad(state=");
                int i10 = c3119bArr[i8].f26810f[i9];
                if (i10 == 0) {
                    sb.append('_');
                } else if (i10 == 1) {
                    sb.append('R');
                } else if (i10 == 2) {
                    sb.append('S');
                } else if (i10 == 3) {
                    sb.append('P');
                } else if (i10 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(c3119bArr[i8].f26811g[i9]);
                sb.append(')');
                if (i9 < c3119bArr[i8].f26810f.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i8 < -1) {
                sb.append(", ");
            }
            i8++;
        }
    }
}
