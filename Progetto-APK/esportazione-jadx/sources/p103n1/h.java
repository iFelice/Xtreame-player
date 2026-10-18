package p103n1;

import W0.C0369b;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.Et;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f27415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f27416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0369b f27417f;

    public h(C0369b c0369b, long j8, long j9, long[] jArr, int i8, int i9, int i10) {
        C0369b c0369b2 = new C0369b();
        c0369b2.f7373a = c0369b.f7373a;
        c0369b2.f7374b = c0369b.f7374b;
        c0369b2.f7375c = c0369b.f7375c;
        c0369b2.f7376d = c0369b.f7376d;
        c0369b2.f7377e = c0369b.f7377e;
        c0369b2.f7378f = c0369b.f7378f;
        c0369b2.f7379g = c0369b.f7379g;
        this.f27417f = c0369b2;
        this.f27412a = j8;
        this.f27413b = j9;
        this.f27416e = jArr;
        this.f27414c = i8;
        this.f27415d = i9;
    }

    public static h b(C0369b c0369b, C1534jr c1534jr) {
        long[] jArr;
        int i8;
        int i9;
        int iR = c1534jr.r();
        int iZ = (iR & 1) != 0 ? c1534jr.z() : -1;
        long jE = (iR & 2) != 0 ? c1534jr.E() : -1L;
        if ((iR & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i10 = 0; i10 < 100; i10++) {
                jArr2[i10] = c1534jr.w();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((iR & 8) != 0) {
            c1534jr.k(4);
        }
        if (c1534jr.o() >= 24) {
            c1534jr.k(21);
            int iY = c1534jr.y();
            i9 = iY & 4095;
            i8 = iY >> 12;
        } else {
            i8 = -1;
            i9 = -1;
        }
        return new h(c0369b, iZ, jE, jArr, i8, i9, 0);
    }

    public final long a() {
        long j8 = this.f27412a;
        if (j8 == -1 || j8 == 0) {
            return -9223372036854775807L;
        }
        C0369b c0369b = this.f27417f;
        return Et.u(c0369b.f7376d, (j8 * ((long) c0369b.f7379g)) - 1);
    }
}
