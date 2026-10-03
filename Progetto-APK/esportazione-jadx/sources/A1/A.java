package A1;

import W0.C0373f;
import W0.C0374g;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.R2;
import com.google.android.gms.internal.measurement.H1;
import java.util.List;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class A implements W0.s {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f252e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f253f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f254g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f255h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p010b1.a f256i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public W0.u f257j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f258k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p117p0.J f248a = new p117p0.J(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p117p0.E f250c = new p117p0.E(4096);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f249b = new SparseArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final R2 f251d = new R2(2);

    @Override // W0.s
    public final void d(W0.u uVar) {
        this.f257j = uVar;
    }

    @Override // W0.s
    public final boolean g(W0.t tVar) {
        byte[] bArr = new byte[14];
        tVar.c(0, bArr, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        tVar.g(bArr[13] & 7);
        tVar.c(0, bArr, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    @Override // W0.s
    public final int h(W0.t tVar, W0.w wVar) {
        InterfaceC0035j lVar;
        long jC;
        long j8;
        H1.j(this.f257j);
        long j9 = tVar.j();
        R2 r7 = this.f251d;
        int i8 = 1;
        if (j9 != -1 && !r7.f16199d) {
            boolean z7 = r7.f16201f;
            Object obj = r7.f16198c;
            if (!z7) {
                long j10 = tVar.j();
                int iMin = (int) Math.min(20000L, j10);
                long j11 = j10 - ((long) iMin);
                if (tVar.r() != j11) {
                    wVar.f7458a = j11;
                } else {
                    p117p0.E e8 = (p117p0.E) obj;
                    e8.I(iMin);
                    tVar.m();
                    tVar.c(0, e8.f28035a, iMin);
                    int i9 = e8.f28036b;
                    int i10 = e8.f28037c - 4;
                    while (true) {
                        if (i10 < i9) {
                            j8 = -9223372036854775807L;
                            break;
                        }
                        if (R2.b(i10, e8.f28035a) == 442) {
                            e8.L(i10 + 4);
                            long jC2 = R2.c(e8);
                            if (jC2 != -9223372036854775807L) {
                                j8 = jC2;
                                break;
                            }
                        }
                        i10--;
                    }
                    r7.f16203h = j8;
                    r7.f16201f = true;
                    i8 = 0;
                }
            } else {
                if (r7.f16203h == -9223372036854775807L) {
                    r7.a(tVar);
                    return 0;
                }
                if (r7.f16200e) {
                    long j12 = r7.f16202g;
                    if (j12 == -9223372036854775807L) {
                        r7.a(tVar);
                        return 0;
                    }
                    p117p0.J j13 = (p117p0.J) r7.f16197b;
                    r7.f16204i = j13.c(r7.f16203h) - j13.b(j12);
                    r7.a(tVar);
                    return 0;
                }
                int iMin2 = (int) Math.min(20000L, tVar.j());
                long j14 = 0;
                if (tVar.r() != j14) {
                    wVar.f7458a = j14;
                } else {
                    p117p0.E e9 = (p117p0.E) obj;
                    e9.I(iMin2);
                    tVar.m();
                    tVar.c(0, e9.f28035a, iMin2);
                    int i11 = e9.f28036b;
                    int i12 = e9.f28037c;
                    while (true) {
                        if (i11 >= i12 - 3) {
                            jC = -9223372036854775807L;
                            break;
                        }
                        if (R2.b(i11, e9.f28035a) == 442) {
                            e9.L(i11 + 4);
                            jC = R2.c(e9);
                            if (jC != -9223372036854775807L) {
                                break;
                            }
                        }
                        i11++;
                    }
                    r7.f16202g = jC;
                    r7.f16200e = true;
                    i8 = 0;
                }
            }
            return i8;
        }
        if (!this.f258k) {
            this.f258k = true;
            long j15 = r7.f16204i;
            if (j15 != -9223372036854775807L) {
                p010b1.a aVar = new p010b1.a(new F2.G(0), new p096m2.l((p117p0.J) r7.f16197b, 0), j15, 1 + j15, 0L, j9, 188L, 1000);
                this.f256i = aVar;
                this.f257j.r((C0373f) aVar.f7425b);
            } else {
                this.f257j.r(new W0.x(j15));
            }
        }
        p010b1.a aVar2 = this.f256i;
        if (aVar2 != null && ((C0374g) aVar2.f7427d) != null) {
            return aVar2.a(tVar, wVar);
        }
        tVar.m();
        long jF = j9 != -1 ? j9 - tVar.f() : -1L;
        if (jF != -1 && jF < 4) {
            return -1;
        }
        p117p0.E e10 = this.f250c;
        if (!tVar.e(e10.f28035a, 0, 4, true)) {
            return -1;
        }
        e10.L(0);
        int iL = e10.l();
        if (iL == 441) {
            return -1;
        }
        if (iL == 442) {
            tVar.c(0, e10.f28035a, 10);
            e10.L(9);
            tVar.n((e10.z() & 7) + 14);
            return 0;
        }
        if (iL == 443) {
            tVar.c(0, e10.f28035a, 2);
            e10.L(0);
            tVar.n(e10.F() + 6);
            return 0;
        }
        if (((iL & (-256)) >> 8) != 1) {
            tVar.n(1);
            return 0;
        }
        int i13 = iL & 255;
        SparseArray sparseArray = this.f249b;
        z zVar = (z) sparseArray.get(i13);
        if (!this.f252e) {
            if (zVar == null) {
                if (i13 == 189) {
                    lVar = new C0027b("video/mp2p");
                    this.f253f = true;
                    this.f255h = tVar.r();
                } else if ((iL & 224) == 192) {
                    lVar = new v(null, 0, "video/mp2p");
                    this.f253f = true;
                    this.f255h = tVar.r();
                } else if ((iL & 240) == 224) {
                    lVar = new l(null, "video/mp2p");
                    this.f254g = true;
                    this.f255h = tVar.r();
                } else {
                    lVar = null;
                }
                if (lVar != null) {
                    lVar.c(this.f257j, new I(i13, 256));
                    zVar = new z(lVar, this.f248a);
                    sparseArray.put(i13, zVar);
                }
            }
            if (tVar.r() > ((this.f253f && this.f254g) ? this.f255h + PlaybackStateCompat.ACTION_PLAY_FROM_URI : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                this.f252e = true;
                this.f257j.j();
            }
        }
        tVar.c(0, e10.f28035a, 2);
        e10.L(0);
        int iF = e10.F() + 6;
        if (zVar == null) {
            tVar.n(iF);
            return 0;
        }
        e10.I(iF);
        tVar.readFully(e10.f28035a, 0, iF);
        e10.L(6);
        p117p0.D d6 = zVar.f613c;
        e10.j(0, d6.f28028b, 3);
        d6.r(0);
        d6.u(8);
        zVar.f614d = d6.h();
        zVar.f615e = d6.h();
        d6.u(6);
        e10.j(0, d6.f28028b, d6.i(8));
        d6.r(0);
        zVar.f617g = 0L;
        if (zVar.f614d) {
            d6.u(4);
            long jI = ((long) d6.i(3)) << 30;
            d6.u(1);
            long jI2 = jI | ((long) (d6.i(15) << 15));
            d6.u(1);
            long jI3 = jI2 | ((long) d6.i(15));
            d6.u(1);
            boolean z8 = zVar.f616f;
            p117p0.J j16 = zVar.f612b;
            if (!z8 && zVar.f615e) {
                d6.u(4);
                long jI4 = ((long) d6.i(3)) << 30;
                d6.u(1);
                long jI5 = jI4 | ((long) (d6.i(15) << 15));
                d6.u(1);
                long jI6 = jI5 | ((long) d6.i(15));
                d6.u(1);
                j16.b(jI6);
                zVar.f616f = true;
            }
            zVar.f617g = j16.b(jI3);
        }
        long j17 = zVar.f617g;
        InterfaceC0035j interfaceC0035j = zVar.f611a;
        interfaceC0035j.e(4, j17);
        interfaceC0035j.b(e10);
        interfaceC0035j.d(false);
        e10.K(e10.f28035a.length);
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    @Override // W0.s
    public final void i(long j8, long j9) {
        p117p0.J j10 = this.f248a;
        boolean z7 = j10.e() == -9223372036854775807L;
        if (!z7) {
            long jD = j10.d();
            if (jD != -9223372036854775807L && jD != 0 && jD != j9) {
                j10.g(j9);
            }
        } else if (z7) {
            j10.g(j9);
        }
        p010b1.a aVar = this.f256i;
        if (aVar != null) {
            aVar.d(j9);
        }
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = this.f249b;
            if (i8 >= sparseArray.size()) {
                return;
            }
            z zVar = (z) sparseArray.valueAt(i8);
            zVar.f616f = false;
            zVar.f611a.a();
            i8++;
        }
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = z4.H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final W0.s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
