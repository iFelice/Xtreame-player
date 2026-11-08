package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class HN implements UN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KN f13754b;

    public HN(KN kn, int i8) {
        this.f13754b = kn;
        this.f13753a = i8;
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final int a(long j8) {
        int iG;
        KN kn = this.f13754b;
        int i8 = this.f13753a;
        if (kn.v()) {
            return 0;
        }
        kn.r(i8);
        TN tn = kn.f14352W[i8];
        boolean z7 = kn.f14371p0;
        synchronized (tn) {
            int i9 = tn.f16648q;
            int iH = tn.h(i9);
            int i10 = tn.f16648q;
            int i11 = tn.f16645n;
            if (i10 != i11 && j8 >= tn.f16643l[iH]) {
                if (j8 <= tn.f16651t || !z7) {
                    iG = tn.g(iH, i11 - i9, j8, true);
                    if (iG == -1) {
                    }
                } else {
                    iG = i11 - i9;
                }
            }
            iG = 0;
        }
        tn.p(iG);
        if (iG != 0) {
            return iG;
        }
        kn.s(i8);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final int b(C0871Om c0871Om, VJ vj, int i8) {
        int i9;
        int i10;
        KN kn = this.f13754b;
        int i11 = this.f13753a;
        if (kn.v()) {
            return -3;
        }
        kn.r(i11);
        TN tn = kn.f14352W[i11];
        boolean z7 = kn.f14371p0;
        tn.getClass();
        boolean z8 = (i8 & 2) != 0;
        p149t0.d dVar = tn.f16633b;
        synchronized (tn) {
            try {
                vj.f16994f = false;
                int i12 = tn.f16648q;
                i9 = -4;
                if (i12 != tn.f16645n) {
                    C1804p0 c1804p0 = ((RN) tn.f16634c.a(tn.f16646o + i12)).f16260a;
                    if (!z8 && c1804p0 == tn.f16637f) {
                        int iH = tn.h(tn.f16648q);
                        if (tn.f16631A != null) {
                            int i13 = tn.f16642k[iH];
                            vj.f16994f = true;
                            i10 = -3;
                        } else {
                            int i14 = tn.f16642k[iH];
                            vj.f29448b = i14;
                            if (tn.f16648q == tn.f16645n - 1 && (z7 || tn.f16652u)) {
                                vj.f29448b = 536870912 | i14;
                            }
                            vj.f16995g = tn.f16643l[iH];
                            dVar.f30167H = tn.f16641j[iH];
                            dVar.f30168I = tn.f16640i[iH];
                            dVar.f30169J = tn.f16644m[iH];
                            i10 = -4;
                        }
                    }
                    tn.j(c1804p0, c0871Om);
                    i10 = -5;
                } else {
                    if (!z7 && !tn.f16652u) {
                        C1804p0 c1804p1 = tn.f16655x;
                        if (c1804p1 == null || (!z8 && c1804p1 == tn.f16637f)) {
                            i10 = -3;
                        }
                        tn.j(c1804p1, c0871Om);
                        i10 = -5;
                    }
                    vj.f29448b = 4;
                    vj.f16995g = Long.MIN_VALUE;
                    i10 = -4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i10 != -4) {
            i9 = i10;
        } else if (!vj.b(4)) {
            int i15 = i8 & 1;
            if ((i8 & 4) == 0) {
                if (i15 != 0) {
                    QN qn = tn.f16632a;
                    QN.e(qn.f16023c, vj, tn.f16633b, qn.f16021a);
                } else {
                    QN qn2 = tn.f16632a;
                    qn2.f16023c = QN.e(qn2.f16023c, vj, tn.f16633b, qn2.f16021a);
                    tn.f16648q++;
                }
            } else if (i15 == 0) {
                tn.f16648q++;
            }
        }
        if (i9 == -3) {
            kn.s(i11);
        }
        return i9;
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final void zzd() throws IOException {
        IOException iOException;
        KN kn = this.f13754b;
        C2293yM c2293yM = kn.f14352W[this.f13753a].f16631A;
        if (c2293yM != null) {
            throw c2293yM.f22023a;
        }
        int i8 = kn.f14362g0 == 7 ? 6 : 3;
        JO jo = kn.f14344O;
        IOException iOException2 = jo.f14155d;
        if (iOException2 != null) {
            throw iOException2;
        }
        GO go = jo.f14154c;
        if (go != null && (iOException = go.f13552I) != null && go.f13553J > i8) {
            throw iOException;
        }
    }

    @Override // com.google.android.gms.internal.ads.UN
    public final boolean zze() {
        KN kn = this.f13754b;
        return !kn.v() && kn.f14352W[this.f13753a].q(kn.f14371p0);
    }
}
