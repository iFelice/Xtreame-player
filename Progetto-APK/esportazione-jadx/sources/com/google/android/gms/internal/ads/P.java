package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public class P implements Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f15303c;

    public /* synthetic */ P(Object obj, int i8, long j8) {
        this.f15301a = i8;
        this.f15303c = obj;
        this.f15302b = j8;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        int i8 = this.f15301a;
        Object obj = this.f15303c;
        switch (i8) {
            case 0:
                Q q7 = (Q) obj;
                p113o3.r.x(q7.f15538k);
                C2218x c2218x = q7.f15538k;
                long[] jArr = (long[]) c2218x.f21779H;
                long[] jArr2 = (long[]) c2218x.f21780I;
                int iK = Et.k(jArr, Math.max(0L, Math.min((((long) q7.f15532e) * j8) / 1000000, q7.f15537j - 1)), false);
                long j9 = iK == -1 ? 0L : jArr[iK];
                long j10 = iK != -1 ? jArr2[iK] : 0L;
                long j11 = (j9 * 1000000) / ((long) ((Q) obj).f15532e);
                long j12 = this.f15302b;
                Z z7 = new Z(j11, j10 + j12);
                if (j11 == j8 || iK == jArr.length - 1) {
                    return new X(z7, z7);
                }
                int i9 = iK + 1;
                return new X(z7, new Z((jArr[i9] * 1000000) / ((long) ((Q) obj).f15532e), j12 + jArr2[i9]));
            case 1:
                return (X) obj;
            default:
                C1442i0 c1442i0 = (C1442i0) obj;
                X xA = c1442i0.f19211i[0].a(j8);
                int i10 = 1;
                while (true) {
                    C1596l0[] c1596l0Arr = c1442i0.f19211i;
                    if (i10 >= c1596l0Arr.length) {
                        return xA;
                    }
                    X xA2 = c1596l0Arr[i10].a(j8);
                    if (xA2.f17356a.f17702b < xA.f17356a.f17702b) {
                        xA = xA2;
                    }
                    i10++;
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        switch (this.f15301a) {
            case 0:
                return ((Q) this.f15303c).a();
            default:
                return this.f15302b;
        }
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        switch (this.f15301a) {
            case 1:
                return false;
            default:
                return true;
        }
    }

    public P(long j8, long j9) {
        this.f15301a = 1;
        this.f15302b = j8;
        Z z7 = j9 == 0 ? Z.f17700c : new Z(0L, j9);
        this.f15303c = new X(z7, z7);
    }
}
