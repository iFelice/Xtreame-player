package com.google.android.gms.internal.ads;

import W0.C0369b;
import java.math.RoundingMode;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.m1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1649m1 implements InterfaceC1597l1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f19886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f19887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f19888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f19889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f19890e;

    public C1649m1(long[] jArr, long[] jArr2, long j8, long j9, int i8) {
        this.f19886a = jArr;
        this.f19887b = jArr2;
        this.f19888c = j8;
        this.f19889d = j9;
        this.f19890e = i8;
    }

    public static C1649m1 c(long j8, long j9, C0369b c0369b, C1534jr c1534jr) {
        int iW;
        c1534jr.k(10);
        int iR = c1534jr.r();
        if (iR <= 0) {
            return null;
        }
        int i8 = c0369b.f7376d;
        long jV = Et.v(iR, ((long) (i8 >= 32000 ? 1152 : 576)) * 1000000, i8, RoundingMode.FLOOR);
        int iA = c1534jr.A();
        int iA2 = c1534jr.A();
        int iA3 = c1534jr.A();
        c1534jr.k(2);
        long j10 = j9 + ((long) c0369b.f7375c);
        long[] jArr = new long[iA];
        long[] jArr2 = new long[iA];
        long j11 = j9;
        int i9 = 0;
        while (i9 < iA) {
            long j12 = jV;
            jArr[i9] = (((long) i9) * jV) / ((long) iA);
            jArr2[i9] = Math.max(j11, j10);
            if (iA3 == 1) {
                iW = c1534jr.w();
            } else if (iA3 == 2) {
                iW = c1534jr.A();
            } else if (iA3 == 3) {
                iW = c1534jr.y();
            } else {
                if (iA3 != 4) {
                    return null;
                }
                iW = c1534jr.z();
            }
            j11 += ((long) iW) * ((long) iA2);
            i9++;
            jV = j12;
        }
        long j13 = jV;
        if (j8 != -1 && j8 != j11) {
            StringBuilder sbD = p148t.a.d("VBRI data size mismatch: ", j8, ", ");
            sbD.append(j11);
            Zo.f("VbriSeeker", sbD.toString());
        }
        return new C1649m1(jArr, jArr2, j13, j11, c0369b.f7378f);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final long a(long j8) {
        return this.f19886a[Et.k(this.f19887b, j8, true)];
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        long[] jArr = this.f19886a;
        int iK = Et.k(jArr, j8, true);
        long j9 = jArr[iK];
        long[] jArr2 = this.f19887b;
        Z z7 = new Z(j9, jArr2[iK]);
        if (j9 >= j8 || iK == jArr.length - 1) {
            return new X(z7, z7);
        }
        int i8 = iK + 1;
        return new X(z7, new Z(jArr[i8], jArr2[i8]));
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f19888c;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final int zzc() {
        return this.f19890e;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1597l1
    public final long zzd() {
        return this.f19889d;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return true;
    }
}
