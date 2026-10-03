package com.google.android.gms.internal.ads;

import W0.C0374g;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class T2 implements L {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16580e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f16581f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f16582g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f16583h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p010b1.a f16584i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public N f16585j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f16586k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ys f16576a = new Ys();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f16578c = new C1534jr(4096);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f16577b = new SparseArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final R2 f16579d = new R2(0);

    /* JADX WARN: Code duplicated, block: B:103:0x0239  */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) {
        long jB;
        F2 h8;
        long jE;
        long jE2;
        p113o3.r.x(this.f16585j);
        long jZzd = m7.zzd();
        R2 r7 = this.f16579d;
        int i8 = 1;
        if (jZzd != -1 && !r7.f16199d) {
            boolean z7 = r7.f16201f;
            Object obj = r7.f16198c;
            if (!z7) {
                long jZzd2 = m7.zzd();
                int iMin = (int) Math.min(20000L, jZzd2);
                long j8 = jZzd2 - ((long) iMin);
                if (m7.zzf() != j8) {
                    wVar.f7458a = j8;
                } else {
                    C1534jr c1534jr = (C1534jr) obj;
                    c1534jr.g(iMin);
                    m7.zzj();
                    m7.g(0, c1534jr.f19515a, iMin);
                    int i9 = c1534jr.f19516b;
                    int i10 = c1534jr.f19517c - 4;
                    while (true) {
                        if (i10 < i9) {
                            jE2 = -9223372036854775807L;
                            break;
                        }
                        if (R2.h(i10, c1534jr.f19515a) == 442) {
                            c1534jr.j(i10 + 4);
                            jE2 = R2.e(c1534jr);
                            if (jE2 != -9223372036854775807L) {
                                break;
                            }
                        }
                        i10--;
                    }
                    r7.f16203h = jE2;
                    r7.f16201f = true;
                    i8 = 0;
                }
            } else {
                if (r7.f16203h == -9223372036854775807L) {
                    r7.g(m7);
                    return 0;
                }
                if (r7.f16200e) {
                    long j9 = r7.f16202g;
                    if (j9 == -9223372036854775807L) {
                        r7.g(m7);
                        return 0;
                    }
                    Ys ys = (Ys) r7.f16197b;
                    r7.f16204i = ys.c(r7.f16203h) - ys.b(j9);
                    r7.g(m7);
                    return 0;
                }
                int iMin2 = (int) Math.min(20000L, m7.zzd());
                if (m7.zzf() != 0) {
                    wVar.f7458a = 0L;
                } else {
                    C1534jr c1534jr2 = (C1534jr) obj;
                    c1534jr2.g(iMin2);
                    m7.zzj();
                    m7.g(0, c1534jr2.f19515a, iMin2);
                    int i11 = c1534jr2.f19516b;
                    int i12 = c1534jr2.f19517c;
                    while (true) {
                        if (i11 >= i12 - 3) {
                            jE = -9223372036854775807L;
                            break;
                        }
                        if (R2.h(i11, c1534jr2.f19515a) == 442) {
                            c1534jr2.j(i11 + 4);
                            jE = R2.e(c1534jr2);
                            if (jE != -9223372036854775807L) {
                                break;
                            }
                        }
                        i11++;
                    }
                    r7.f16202g = jE;
                    r7.f16200e = true;
                    i8 = 0;
                }
            }
            return i8;
        }
        if (!this.f16586k) {
            this.f16586k = true;
            if (r7.d() != -9223372036854775807L) {
                Ys ys2 = (Ys) r7.f16197b;
                long jD = r7.d();
                p010b1.a aVar = new p010b1.a(new C1561kH(2), new C2218x(ys2), jD, jD + 1, 0L, jZzd, 188L, 1000);
                this.f16584i = aVar;
                this.f16585j.g((A) aVar.f7425b);
            } else {
                this.f16585j.g(new P(r7.d(), 0L));
            }
        }
        p010b1.a aVar2 = this.f16584i;
        if (aVar2 != null && ((C0374g) aVar2.f7427d) != null) {
            return aVar2.e(m7, wVar);
        }
        m7.zzj();
        long jZze = jZzd != -1 ? jZzd - m7.zze() : -1L;
        if (jZze != -1 && jZze < 4) {
            return -1;
        }
        C1534jr c1534jr3 = this.f16578c;
        if (!m7.d(c1534jr3.f19515a, 0, 4, true)) {
            return -1;
        }
        c1534jr3.j(0);
        int iR = c1534jr3.r();
        if (iR == 441) {
            return -1;
        }
        if (iR == 442) {
            m7.g(0, c1534jr3.f19515a, 10);
            c1534jr3.j(9);
            m7.q((c1534jr3.w() & 7) + 14);
            return 0;
        }
        if (iR == 443) {
            m7.g(0, c1534jr3.f19515a, 2);
            c1534jr3.j(0);
            m7.q(c1534jr3.A() + 6);
            return 0;
        }
        if ((iR >> 8) != 1) {
            m7.q(1);
            return 0;
        }
        int i13 = iR & 255;
        SparseArray sparseArray = this.f16577b;
        S2 s7 = (S2) sparseArray.get(i13);
        if (!this.f16580e) {
            if (s7 == null) {
                F2 f8 = null;
                if (i13 == 189) {
                    h8 = new A2(null, 0, 0);
                    this.f16581f = true;
                    this.f16583h = m7.zzf();
                } else if ((iR & 224) == 192) {
                    h8 = new O2(null, 0);
                    this.f16581f = true;
                    this.f16583h = m7.zzf();
                } else if ((iR & 240) == 224) {
                    h8 = new H2(null);
                    this.f16582g = true;
                    this.f16583h = m7.zzf();
                } else if (f8 != null) {
                    f8.c(this.f16585j, new A1.I(Integer.MIN_VALUE, i13, 256, 1));
                    s7 = new S2(f8, this.f16576a);
                    sparseArray.put(i13, s7);
                }
                f8 = h8;
                if (f8 != null) {
                    f8.c(this.f16585j, new A1.I(Integer.MIN_VALUE, i13, 256, 1));
                    s7 = new S2(f8, this.f16576a);
                    sparseArray.put(i13, s7);
                }
            }
            boolean z8 = this.f16581f;
            long j10 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            if (z8 && this.f16582g) {
                j10 = this.f16583h + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            }
            if (m7.zzf() > j10) {
                this.f16580e = true;
                this.f16585j.f();
            }
        }
        m7.g(0, c1534jr3.f19515a, 2);
        c1534jr3.j(0);
        int iA = c1534jr3.A() + 6;
        if (s7 == null) {
            m7.q(iA);
            return 0;
        }
        c1534jr3.g(iA);
        m7.h(0, c1534jr3.f19515a, iA);
        c1534jr3.j(6);
        C1286f0 c1286f0 = s7.f16399c;
        c1534jr3.f(0, c1286f0.f18645b, 3);
        c1286f0.t(0);
        c1286f0.v(8);
        s7.f16400d = c1286f0.x();
        s7.f16401e = c1286f0.x();
        c1286f0.v(6);
        c1534jr3.f(0, c1286f0.f18645b, c1286f0.g(8));
        c1286f0.t(0);
        if (s7.f16400d) {
            c1286f0.v(4);
            long jG = c1286f0.g(3);
            c1286f0.v(1);
            int iG = c1286f0.g(15) << 15;
            c1286f0.v(1);
            long jG2 = c1286f0.g(15);
            c1286f0.v(1);
            boolean z9 = s7.f16402f;
            Ys ys3 = s7.f16398b;
            if (!z9 && s7.f16401e) {
                c1286f0.v(4);
                long jG3 = ((long) c1286f0.g(3)) << 30;
                c1286f0.v(1);
                int iG2 = c1286f0.g(15) << 15;
                c1286f0.v(1);
                long jG4 = c1286f0.g(15);
                c1286f0.v(1);
                ys3.b(jG3 | ((long) iG2) | jG4);
                s7.f16402f = true;
            }
            jB = ys3.b((jG << 30) | ((long) iG) | jG2);
        } else {
            c1534jr3 = c1534jr3;
            jB = 0;
        }
        F2 f9 = s7.f16397a;
        f9.d(4, jB);
        C1534jr c1534jr4 = c1534jr3;
        f9.b(c1534jr4);
        f9.zzc(false);
        c1534jr4.i(c1534jr4.f19515a.length);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) throws EOFException, InterruptedIOException {
        byte[] bArr = new byte[14];
        F f8 = (F) m7;
        f8.d(bArr, 0, 14, false);
        if ((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) != 442 || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        f8.i(bArr[13] & 7, false);
        f8.d(bArr, 0, 3, false);
        return ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255)) == 1;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0021  */
    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        Ys ys = this.f16576a;
        if (ys.e() != -9223372036854775807L) {
            long jD = ys.d();
            if (jD != -9223372036854775807L && jD != 0 && jD != j9) {
                ys.f(j9);
            }
        } else {
            ys.f(j9);
        }
        p010b1.a aVar = this.f16584i;
        if (aVar != null) {
            aVar.f(j9);
        }
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = this.f16577b;
            if (i8 >= sparseArray.size()) {
                return;
            }
            S2 s7 = (S2) sparseArray.valueAt(i8);
            s7.f16402f = false;
            s7.f16397a.zze();
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f16585j = n7;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
