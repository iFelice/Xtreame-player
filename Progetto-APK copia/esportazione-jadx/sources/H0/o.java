package H0;

import O0.AbstractC0277a;
import O0.C0300y;
import O0.InterfaceC0298w;
import O0.Y;
import android.net.Uri;
import android.os.Looper;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p094m0.C;
import p094m0.D;
import p094m0.E;
import p094m0.I;
import p094m0.J;
import p117p0.M;
import p141s0.C3188m;
import p141s0.O;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class o extends AbstractC0277a implements I0.v {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final k f3529h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c f3530i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final U4.b f3531j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final G0.r f3532k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final U4.b f3533l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f3534m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3535n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final I0.w f3537p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f3538q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public D f3540s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public O f3541t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public I f3542u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f3536o = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final long f3539r = 0;

    static {
        J.a("media3.exoplayer.hls");
    }

    public o(I i8, c cVar, k kVar, U4.b bVar, G0.r rVar, U4.b bVar2, I0.c cVar2, long j8, boolean z7, int i9) {
        this.f3542u = i8;
        this.f3540s = i8.f26703c;
        this.f3530i = cVar;
        this.f3529h = kVar;
        this.f3531j = bVar;
        this.f3532k = rVar;
        this.f3533l = bVar2;
        this.f3537p = cVar2;
        this.f3538q = j8;
        this.f3534m = z7;
        this.f3535n = i9;
    }

    public static I0.g t(long j8, H h8) {
        I0.g gVar = null;
        for (int i8 = 0; i8 < h8.size(); i8++) {
            I0.g gVar2 = (I0.g) h8.get(i8);
            long j9 = gVar2.f3866K;
            if (j9 > j8 || !gVar2.f3855R) {
                if (j9 > j8) {
                    break;
                }
            } else {
                gVar = gVar2;
            }
        }
        return gVar;
    }

    @Override // O0.AbstractC0277a
    public final InterfaceC0298w b(C0300y c0300y, S0.d dVar, long j8) {
        O0.D dA = a(c0300y);
        G0.o oVar = new G0.o(this.f5188d.f3376c, 0, c0300y);
        O o4 = this.f3541t;
        C0.I i8 = this.f5191g;
        H1.j(i8);
        return new n(this.f3529h, this.f3537p, this.f3530i, o4, this.f3532k, oVar, this.f3533l, dA, dVar, this.f3531j, this.f3534m, this.f3535n, this.f3536o, i8, this.f3539r);
    }

    @Override // O0.AbstractC0277a
    public final synchronized I h() {
        return this.f3542u;
    }

    @Override // O0.AbstractC0277a
    public final void j() throws IOException {
        I0.c cVar = (I0.c) this.f3537p;
        S0.m mVar = cVar.f3809M;
        if (mVar != null) {
            mVar.b();
        }
        Uri uri = cVar.f3813Q;
        if (uri != null) {
            I0.b bVar = (I0.b) cVar.f3806J.get(uri);
            bVar.f3791H.b();
            IOException iOException = bVar.f3799P;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    @Override // O0.AbstractC0277a
    public final void l(O o4) {
        this.f3541t = o4;
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        C0.I i8 = this.f5191g;
        H1.j(i8);
        G0.r rVar = this.f3532k;
        rVar.f(looperMyLooper, i8);
        rVar.prepare();
        O0.D dA = a(null);
        E e8 = h().f26702b;
        e8.getClass();
        I0.c cVar = (I0.c) this.f3537p;
        cVar.getClass();
        cVar.f3810N = M.n(null);
        cVar.f3808L = dA;
        cVar.f3811O = this;
        Map mapEmptyMap = Collections.emptyMap();
        Uri uri = e8.f26675a;
        H1.k(uri, "The uri must be set.");
        S0.p pVar = new S0.p(cVar.f3803G.f3436a.a(), new C3188m(uri, 0L, 1, null, mapEmptyMap, 0L, -1L, null, 1, null), 4, cVar.f3804H.H());
        H1.i(cVar.f3809M == null);
        S0.m mVar = new S0.m("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        cVar.f3809M = mVar;
        mVar.g(pVar, cVar, cVar.f3805I.Y(pVar.f6371I));
    }

    @Override // O0.AbstractC0277a
    public final void n(InterfaceC0298w interfaceC0298w) {
        n nVar = (n) interfaceC0298w;
        ((I0.c) nVar.f3505H).f3807K.remove(nVar);
        for (t tVar : nVar.f3525b0) {
            if (tVar.f3592j0) {
                for (s sVar : tVar.f3584b0) {
                    sVar.k();
                    G0.l lVar = sVar.f5146h;
                    if (lVar != null) {
                        lVar.c(sVar.f5143e);
                        sVar.f5146h = null;
                        sVar.f5145g = null;
                    }
                }
            }
            j jVar = tVar.f3566J;
            R0.c cVar = (R0.c) jVar.f3472s;
            I0.b bVar = (I0.b) ((I0.c) jVar.f3460g).f3806J.get(jVar.f3458e[cVar.f6127c[cVar.b()]]);
            if (bVar != null) {
                bVar.f3800Q = false;
            }
            jVar.f3468o = null;
            tVar.f3572P.f(tVar);
            tVar.f3580X.removeCallbacksAndMessages(null);
            tVar.f3596n0 = true;
            tVar.f3581Y.clear();
        }
        nVar.f3522Y = null;
    }

    @Override // O0.AbstractC0277a
    public final void p() {
        I0.c cVar = (I0.c) this.f3537p;
        cVar.f3813Q = null;
        cVar.f3814R = null;
        cVar.f3812P = null;
        cVar.f3816T = -9223372036854775807L;
        cVar.f3809M.f(null);
        cVar.f3809M = null;
        HashMap map = cVar.f3806J;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((I0.b) it.next()).f3791H.f(null);
        }
        cVar.f3810N.removeCallbacksAndMessages(null);
        cVar.f3810N = null;
        map.clear();
        this.f3532k.release();
    }

    @Override // O0.AbstractC0277a
    public final synchronized void s(I i8) {
        this.f3542u = i8;
    }

    public final void u(I0.l lVar) {
        Y y7;
        long j8;
        long jR;
        long j9;
        boolean z7 = lVar.f3890p;
        long j10 = lVar.f3882h;
        long jE0 = z7 ? M.e0(j10) : -9223372036854775807L;
        int i8 = lVar.f3878d;
        long j11 = (i8 == 2 || i8 == 1) ? jE0 : -9223372036854775807L;
        I0.c cVar = (I0.c) this.f3537p;
        I0.o oVar = cVar.f3812P;
        oVar.getClass();
        F.i iVar = new F.i(3, oVar, lVar);
        boolean z8 = cVar.f3815S;
        long j12 = lVar.f3895u;
        long j13 = 0;
        H h8 = lVar.f3892r;
        boolean z9 = lVar.f3881g;
        long j14 = jE0;
        long jR2 = lVar.f3879e;
        if (z8) {
            long j15 = j11;
            long j16 = j10 - cVar.f3816T;
            boolean z10 = lVar.f3889o;
            long j17 = z10 ? j16 + j12 : -9223372036854775807L;
            long jR3 = z7 ? M.R(M.z(this.f3538q)) - (j10 + j12) : 0L;
            long j18 = this.f3540s.f26670a;
            I0.k kVar = lVar.f3896v;
            if (j18 != -9223372036854775807L) {
                jR = M.R(j18);
            } else {
                if (jR2 != -9223372036854775807L) {
                    j8 = j12 - jR2;
                } else {
                    long j19 = kVar.f3876d;
                    if (j19 == -9223372036854775807L || lVar.f3888n == -9223372036854775807L) {
                        j8 = kVar.f3875c;
                        if (j8 == -9223372036854775807L) {
                            j8 = 3 * lVar.f3887m;
                        }
                    } else {
                        j8 = j19;
                    }
                }
                jR = j8 + jR3;
            }
            long j20 = j12 + jR3;
            long j21 = M.j(jR, jR3, j20);
            D d6 = h().f26703c;
            boolean z11 = d6.f26673d == -3.4028235E38f && d6.f26674e == -3.4028235E38f && kVar.f3875c == -9223372036854775807L && kVar.f3876d == -9223372036854775807L;
            C c8 = new C();
            c8.f26665a = M.e0(j21);
            c8.f26668d = z11 ? 1.0f : this.f3540s.f26673d;
            c8.f26669e = z11 ? 1.0f : this.f3540s.f26674e;
            D d8 = new D(c8);
            this.f3540s = d8;
            if (jR2 == -9223372036854775807L) {
                jR2 = j20 - M.R(d8.f26670a);
            }
            if (z9) {
                j13 = jR2;
            } else {
                I0.g gVarT = t(jR2, lVar.f3893s);
                if (gVarT != null) {
                    j9 = gVarT.f3866K;
                } else if (!h8.isEmpty()) {
                    I0.i iVar2 = (I0.i) h8.get(M.c(h8, Long.valueOf(jR2), true));
                    I0.g gVarT2 = t(jR2, iVar2.f3861S);
                    j9 = gVarT2 != null ? gVarT2.f3866K : iVar2.f3866K;
                }
                j13 = j9;
            }
            y7 = new Y(j15, j14, j17, lVar.f3895u, j16, j13, true, !z10, i8 == 2 && lVar.f3880f, iVar, h(), this.f3540s);
        } else {
            long j22 = j11;
            if (jR2 != -9223372036854775807L && !h8.isEmpty()) {
                j13 = (z9 || jR2 == j12) ? jR2 : ((I0.i) h8.get(M.c(h8, Long.valueOf(jR2), true))).f3866K;
            }
            I iH = h();
            long j23 = lVar.f3895u;
            y7 = new Y(j22, j14, j23, j23, 0L, j13, true, false, true, iVar, iH, null);
        }
        m(y7);
    }
}
