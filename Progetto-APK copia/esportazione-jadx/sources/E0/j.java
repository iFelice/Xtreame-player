package E0;

import F0.v;
import I0.u;
import O0.AbstractC0277a;
import O0.C0278b;
import O0.C0292p;
import O0.C0300y;
import O0.InterfaceC0298w;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p094m0.C;
import p094m0.D;
import p094m0.E;
import p094m0.I;
import p094m0.J;
import p117p0.M;
import p117p0.x;
import p141s0.C3188m;
import p141s0.InterfaceC3183h;
import p141s0.InterfaceC3184i;
import p141s0.O;

/* JADX INFO: loaded from: classes.dex */
public final class j extends AbstractC0277a {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public S0.m f2493A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public O f2494B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public u f2495C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public Handler f2496D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public D f2497E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public Uri f2498F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Uri f2499G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public F0.c f2500H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f2501I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f2502J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f2503K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f2504L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f2505M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f2506N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f2507O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public I f2508P;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f2509h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InterfaceC3183h f2510i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f2511j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final U4.b f2512k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final G0.r f2513l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final U4.b f2514m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final p096m2.i f2515n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f2516o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f2517p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final O0.D f2518q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final S0.o f2519r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final i f2520s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Object f2521t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final SparseArray f2522u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final e f2523v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final e f2524w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final f f2525x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final S0.n f2526y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public InterfaceC3184i f2527z;

    static {
        J.a("media3.exoplayer.dash");
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [E0.e] */
    /* JADX WARN: Type inference failed for: r2v11, types: [E0.e] */
    public j(I i8, InterfaceC3183h interfaceC3183h, S0.o oVar, a aVar, U4.b bVar, G0.r rVar, U4.b bVar2, long j8, long j9) {
        this.f2508P = i8;
        this.f2497E = i8.f26703c;
        E e8 = i8.f26702b;
        e8.getClass();
        Uri uri = e8.f26675a;
        this.f2498F = uri;
        this.f2499G = uri;
        this.f2500H = null;
        this.f2510i = interfaceC3183h;
        this.f2519r = oVar;
        this.f2511j = aVar;
        this.f2513l = rVar;
        this.f2514m = bVar2;
        this.f2516o = j8;
        this.f2517p = j9;
        this.f2512k = bVar;
        this.f2515n = new p096m2.i(3);
        final int i9 = 0;
        this.f2509h = false;
        this.f2518q = a(null);
        this.f2521t = new Object();
        this.f2522u = new SparseArray();
        this.f2525x = new f(this);
        this.f2506N = -9223372036854775807L;
        this.f2504L = -9223372036854775807L;
        this.f2520s = new i(this, i9);
        this.f2526y = new f(this);
        this.f2523v = new Runnable(this) { // from class: E0.e

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ j f2478H;

            {
                this.f2478H = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i10 = i9;
                j jVar = this.f2478H;
                switch (i10) {
                    case 0:
                        jVar.z();
                        break;
                    default:
                        jVar.x(false);
                        break;
                }
            }
        };
        final int i10 = 1;
        this.f2524w = new Runnable(this) { // from class: E0.e

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ j f2478H;

            {
                this.f2478H = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i11 = i10;
                j jVar = this.f2478H;
                switch (i11) {
                    case 0:
                        jVar.z();
                        break;
                    default:
                        jVar.x(false);
                        break;
                }
            }
        };
    }

    public static boolean t(F0.h hVar) {
        int i8 = 0;
        while (true) {
            List list = hVar.f3051c;
            if (i8 >= list.size()) {
                return false;
            }
            int i9 = ((F0.a) list.get(i8)).f3005b;
            if (i9 == 1 || i9 == 2) {
                return true;
            }
            i8++;
        }
    }

    @Override // O0.AbstractC0277a
    public final InterfaceC0298w b(C0300y c0300y, S0.d dVar, long j8) {
        int iIntValue = ((Integer) c0300y.f5257a).intValue() - this.f2507O;
        O0.D dA = a(c0300y);
        G0.o oVar = new G0.o(this.f5188d.f3376c, 0, c0300y);
        int i8 = this.f2507O + iIntValue;
        F0.c cVar = this.f2500H;
        O o4 = this.f2494B;
        long j9 = this.f2504L;
        C0.I i9 = this.f5191g;
        H1.j(i9);
        d dVar2 = new d(i8, cVar, this.f2515n, iIntValue, this.f2511j, o4, this.f2513l, oVar, this.f2514m, dA, j9, this.f2526y, dVar, this.f2512k, this.f2525x, i9);
        this.f2522u.put(i8, dVar2);
        return dVar2;
    }

    @Override // O0.AbstractC0277a
    public final synchronized I h() {
        return this.f2508P;
    }

    @Override // O0.AbstractC0277a
    public final void j() {
        this.f2526y.b();
    }

    @Override // O0.AbstractC0277a
    public final void l(O o4) {
        this.f2494B = o4;
        Looper looperMyLooper = Looper.myLooper();
        C0.I i8 = this.f5191g;
        H1.j(i8);
        G0.r rVar = this.f2513l;
        rVar.f(looperMyLooper, i8);
        rVar.prepare();
        if (this.f2509h) {
            x(false);
            return;
        }
        this.f2527z = this.f2510i.a();
        this.f2493A = new S0.m("DashMediaSource");
        this.f2496D = M.n(null);
        z();
    }

    @Override // O0.AbstractC0277a
    public final void n(InterfaceC0298w interfaceC0298w) {
        d dVar = (d) interfaceC0298w;
        t tVar = dVar.f2463S;
        tVar.f2578O = true;
        tVar.f2573J.removeCallbacksAndMessages(null);
        for (P0.m mVar : dVar.f2469Y) {
            mVar.D(dVar);
        }
        dVar.f2468X = null;
        this.f2522u.remove(dVar.f2451G);
    }

    @Override // O0.AbstractC0277a
    public final void p() {
        this.f2501I = false;
        this.f2527z = null;
        S0.m mVar = this.f2493A;
        if (mVar != null) {
            mVar.f(null);
            this.f2493A = null;
        }
        this.f2502J = 0L;
        this.f2503K = 0L;
        this.f2498F = this.f2499G;
        this.f2495C = null;
        Handler handler = this.f2496D;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f2496D = null;
        }
        this.f2504L = -9223372036854775807L;
        this.f2505M = 0;
        this.f2506N = -9223372036854775807L;
        this.f2522u.clear();
        this.f2515n.a();
        this.f2513l.release();
    }

    @Override // O0.AbstractC0277a
    public final synchronized void s(I i8) {
        this.f2508P = i8;
    }

    public final void u() {
        boolean z7;
        S0.m mVar = this.f2493A;
        f fVar = new f(this);
        synchronized (T0.c.f6514b) {
            z7 = T0.c.f6515c;
        }
        if (z7) {
            fVar.a();
            return;
        }
        if (mVar == null) {
            mVar = new S0.m("SntpClient");
        }
        mVar.g(new U4.b(), new i(fVar, 2), 1);
    }

    public final void v(S0.p pVar, long j8, long j9) {
        long j10 = pVar.f6369G;
        p141s0.M m7 = pVar.f6372J;
        Uri uri = m7.f29910c;
        C0292p c0292p = new C0292p(m7.f29911d, j9);
        this.f2514m.getClass();
        this.f2518q.c(c0292p, pVar.f6371I, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
    }

    public final void w(IOException iOException) {
        x.d("DashMediaSource", "Failed to resolve time offset.", iOException);
        this.f2504L = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        x(true);
    }

    /* JADX WARN: Code duplicated, block: B:122:0x028e  */
    /* JADX WARN: Code duplicated, block: B:152:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:155:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:189:0x039e  */
    /* JADX WARN: Code duplicated, block: B:191:0x03a5  */
    public final void x(boolean z7) {
        F0.h hVar;
        List list;
        boolean z8;
        long j8;
        long j9;
        long j10;
        k kVarL;
        long jMin;
        float f8;
        long jR;
        long jMin2;
        long j11;
        boolean z9 = false;
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = this.f2522u;
            if (i8 >= sparseArray.size()) {
                break;
            }
            int iKeyAt = sparseArray.keyAt(i8);
            if (iKeyAt >= this.f2507O) {
                d dVar = (d) sparseArray.valueAt(i8);
                F0.c cVar = this.f2500H;
                int i9 = iKeyAt - this.f2507O;
                dVar.f2472b0 = cVar;
                dVar.f2473c0 = i9;
                t tVar = dVar.f2463S;
                tVar.f2577N = z9;
                tVar.f2575L = cVar;
                Iterator it = tVar.f2574K.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Long) ((Map.Entry) it.next()).getKey()).longValue() < tVar.f2575L.f3021h) {
                        it.remove();
                    }
                }
                P0.m[] mVarArr = dVar.f2469Y;
                if (mVarArr != null) {
                    for (P0.m mVar : mVarArr) {
                        p pVar = (p) mVar.f5740K;
                        n[] nVarArr = pVar.f2549i;
                        try {
                            pVar.f2551k = cVar;
                            pVar.f2552l = i9;
                            long jD = cVar.d(i9);
                            ArrayList arrayListA = pVar.a();
                            for (int i10 = 0; i10 < nVarArr.length; i10++) {
                                nVarArr[i10] = nVarArr[i10].a(jD, (F0.m) arrayListA.get(((R0.c) pVar.f2550j).f6127c[i10]));
                            }
                        } catch (C0278b e8) {
                            pVar.f2553m = e8;
                        }
                    }
                    dVar.f2468X.r(dVar);
                }
                dVar.f2474d0 = cVar.b(i9).f3052d;
                for (q qVar : dVar.f2470Z) {
                    for (F0.g gVar : dVar.f2474d0) {
                        if (gVar.a().equals(qVar.f2559K.a())) {
                            qVar.a(gVar, cVar.f3017d && i9 == cVar.f3026m.size() - 1);
                            break;
                        }
                    }
                }
            }
            i8++;
            z9 = false;
        }
        F0.h hVarB = this.f2500H.b(0);
        int size = this.f2500H.f3026m.size() - 1;
        F0.h hVarB2 = this.f2500H.b(size);
        long jD2 = this.f2500H.d(size);
        long jR2 = M.R(M.z(this.f2504L));
        long jD3 = this.f2500H.d(0);
        long jR3 = M.R(hVarB.f3050b);
        boolean zT = t(hVarB);
        long jMax = jR3;
        int i11 = 0;
        while (true) {
            List list2 = hVarB.f3051c;
            hVar = hVarB;
            boolean z10 = zT;
            if (i11 >= list2.size()) {
                jR3 = jMax;
                break;
            }
            F0.a aVar = (F0.a) list2.get(i11);
            List list3 = aVar.f3006c;
            int i12 = aVar.f3005b;
            boolean z11 = (i12 == 1 || i12 == 2) ? false : true;
            if ((!z10 || !z11) && !list3.isEmpty()) {
                k kVarL2 = ((F0.m) list3.get(0)).l();
                if (kVarL2 == null || kVarL2.j(jD3, jR2) == 0) {
                    break;
                } else {
                    jMax = Math.max(jMax, kVarL2.a(kVarL2.c(jD3, jR2)) + jR3);
                }
            }
            i11++;
            hVarB = hVar;
            zT = z10;
        }
        long jR4 = M.R(hVarB2.f3050b);
        boolean zT2 = t(hVarB2);
        long jMin3 = Long.MAX_VALUE;
        int i13 = 0;
        while (true) {
            list = hVarB2.f3051c;
            if (i13 >= list.size()) {
                jR4 = jMin3;
                break;
            }
            F0.a aVar2 = (F0.a) list.get(i13);
            List list4 = aVar2.f3006c;
            int i14 = aVar2.f3005b;
            F0.h hVar2 = hVarB2;
            boolean z12 = (i14 == 1 || i14 == 2) ? false : true;
            if ((!zT2 || !z12) && !list4.isEmpty()) {
                k kVarL3 = ((F0.m) list4.get(0)).l();
                if (kVarL3 == null) {
                    jR4 += jD2;
                } else {
                    long j12 = kVarL3.j(jD2, jR2);
                    if (j12 != 0) {
                        long jC = (kVarL3.c(jD2, jR2) + j12) - 1;
                        long jA = kVarL3.a(jC) + jR4;
                        j11 = jD2;
                        jMin3 = Math.min(jMin3, kVarL3.b(jC, j11) + jA);
                    }
                }
                break;
            }
            j11 = jD2;
            i13++;
            jD2 = j11;
            hVarB2 = hVar2;
            jR4 = jR4;
        }
        if (!this.f2500H.f3017d) {
            z8 = false;
            break;
        }
        int i15 = 0;
        while (true) {
            if (i15 >= list.size()) {
                z8 = true;
                break;
            }
            k kVarL4 = ((F0.m) ((F0.a) list.get(i15)).f3006c.get(0)).l();
            if (kVarL4 == null || kVarL4.g()) {
                z8 = false;
                break;
            }
            i15++;
        }
        if (z8) {
            long j13 = this.f2500H.f3019f;
            if (j13 != -9223372036854775807L) {
                jR3 = Math.max(jR3, jR4 - M.R(j13));
            }
        }
        long j14 = jR4 - jR3;
        F0.c cVar2 = this.f2500H;
        if (cVar2.f3017d) {
            H1.i(cVar2.f3014a != -9223372036854775807L);
            long jR5 = (jR2 - M.R(this.f2500H.f3014a)) - jR3;
            D d6 = h().f26703c;
            long jE0 = M.e0(jR5);
            long j15 = d6.f26672c;
            if (j15 != -9223372036854775807L) {
                jMin = Math.min(jE0, j15);
            } else {
                C c8 = this.f2500H.f3023j;
                if (c8 != null) {
                    long j16 = c8.f26667c;
                    if (j16 != -9223372036854775807L) {
                        jMin = Math.min(jE0, j16);
                    } else {
                        jMin = jE0;
                    }
                } else {
                    jMin = jE0;
                }
            }
            long jE1 = M.e0(jR5 - j14);
            if (jE1 < 0 && jMin > 0) {
                jE1 = 0;
            }
            j8 = jR3;
            long j17 = this.f2500H.f3016c;
            long jMin4 = j17 != -9223372036854775807L ? Math.min(jE1 + j17, jE0) : jE1;
            long j18 = d6.f26671b;
            if (j18 != -9223372036854775807L) {
                jMin4 = M.j(j18, jMin4, jE0);
            } else {
                C c9 = this.f2500H.f3023j;
                if (c9 != null) {
                    long j19 = c9.f26666b;
                    if (j19 != -9223372036854775807L) {
                        jMin4 = M.j(j19, jMin4, jE0);
                    }
                }
            }
            long j20 = jMin4;
            if (j20 > jMin) {
                jMin = j20;
            }
            long j21 = this.f2497E.f26670a;
            if (j21 == -9223372036854775807L) {
                F0.c cVar3 = this.f2500H;
                C c10 = cVar3.f3023j;
                if (c10 != null) {
                    j21 = c10.f26665a;
                    if (j21 == -9223372036854775807L) {
                        j21 = cVar3.f3020g;
                        if (j21 == -9223372036854775807L) {
                            j21 = this.f2516o;
                        }
                    }
                } else {
                    j21 = cVar3.f3020g;
                    if (j21 == -9223372036854775807L) {
                        j21 = this.f2516o;
                    }
                }
            }
            if (j21 < j20) {
                j21 = j20;
            }
            long j22 = this.f2517p;
            if (j21 > jMin) {
                j21 = M.j(M.e0(jR5 - Math.min(j22, j14 / 2)), j20, jMin);
            }
            float f9 = d6.f26673d;
            if (f9 == -3.4028235E38f) {
                C c11 = this.f2500H.f3023j;
                f9 = c11 != null ? c11.f26668d : -3.4028235E38f;
            }
            float f10 = d6.f26674e;
            if (f10 == -3.4028235E38f) {
                C c12 = this.f2500H.f3023j;
                f10 = c12 != null ? c12.f26669e : -3.4028235E38f;
            }
            if (f9 == -3.4028235E38f && f10 == -3.4028235E38f) {
                C c13 = this.f2500H.f3023j;
                if (c13 == null || c13.f26665a == -9223372036854775807L) {
                    f9 = 1.0f;
                    f8 = 1.0f;
                }
                C c14 = new C();
                c14.f26665a = j21;
                c14.f26666b = j20;
                c14.f26667c = jMin;
                c14.f26668d = f9;
                c14.f26669e = f8;
                this.f2497E = new D(c14);
                long jE2 = M.e0(j8) + this.f2500H.f3014a;
                jR = jR5 - M.R(this.f2497E.f26670a);
                jMin2 = Math.min(j22, j14 / 2);
                if (jR < jMin2) {
                    j10 = jMin2;
                } else {
                    j10 = jR;
                }
                j9 = jE2;
            }
            f8 = f10;
            C c15 = new C();
            c15.f26665a = j21;
            c15.f26666b = j20;
            c15.f26667c = jMin;
            c15.f26668d = f9;
            c15.f26669e = f8;
            this.f2497E = new D(c15);
            long jE3 = M.e0(j8) + this.f2500H.f3014a;
            jR = jR5 - M.R(this.f2497E.f26670a);
            jMin2 = Math.min(j22, j14 / 2);
            if (jR < jMin2) {
                j10 = jMin2;
            } else {
                j10 = jR;
            }
            j9 = jE3;
        } else {
            j8 = jR3;
            j9 = -9223372036854775807L;
            j10 = 0;
        }
        long jR6 = j8 - M.R(hVar.f3050b);
        F0.c cVar4 = this.f2500H;
        m(new g(cVar4.f3014a, j9, this.f2504L, this.f2507O, jR6, j14, j10, cVar4, h(), this.f2500H.f3017d ? this.f2497E : null));
        if (this.f2509h) {
            return;
        }
        Handler handler = this.f2496D;
        e eVar = this.f2524w;
        handler.removeCallbacks(eVar);
        if (z8) {
            Handler handler2 = this.f2496D;
            F0.c cVar5 = this.f2500H;
            long jZ = M.z(this.f2504L);
            int size2 = cVar5.f3026m.size() - 1;
            F0.h hVarB3 = cVar5.b(size2);
            long jR7 = M.R(hVarB3.f3050b);
            long jD4 = cVar5.d(size2);
            long jR8 = M.R(jZ);
            long jR9 = M.R(cVar5.f3014a);
            long jR10 = M.R(cVar5.f3018e);
            if (jR10 == -9223372036854775807L || jR10 >= 5000000) {
                jR10 = 5000000;
            }
            int i16 = 0;
            while (true) {
                List list5 = hVarB3.f3051c;
                F0.h hVar3 = hVarB3;
                if (i16 >= list5.size()) {
                    break;
                }
                List list6 = ((F0.a) list5.get(i16)).f3006c;
                if (!list6.isEmpty() && (kVarL = ((F0.m) list6.get(0)).l()) != null) {
                    long jD5 = (kVarL.d(jD4, jR8) + (jR9 + jR7)) - jR8;
                    if (jD5 > 0 && (jD5 < jR10 - 100000 || (jD5 > jR10 && jD5 < jR10 + 100000))) {
                        jR10 = jD5;
                    }
                }
                i16++;
                hVarB3 = hVar3;
            }
            handler2.postDelayed(eVar, Q3.b.d(jR10, 1000L, RoundingMode.CEILING));
        }
        if (this.f2501I) {
            z();
            return;
        }
        if (z7) {
            F0.c cVar6 = this.f2500H;
            if (cVar6.f3017d) {
                long j23 = cVar6.f3018e;
                if (j23 != -9223372036854775807L) {
                    if (j23 == 0) {
                        j23 = 5000;
                    }
                    this.f2496D.postDelayed(this.f2523v, Math.max(0L, (this.f2502J + j23) - SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    public final void y(v vVar, S0.o oVar) {
        InterfaceC3184i interfaceC3184i = this.f2527z;
        Uri uri = Uri.parse(vVar.f3096c);
        Map mapEmptyMap = Collections.emptyMap();
        H1.k(uri, "The uri must be set.");
        this.f2493A.g(new S0.p(interfaceC3184i, new C3188m(uri, 0L, 1, null, mapEmptyMap, 0L, -1L, null, 1, null), 5, oVar), new i(this, 1), 1);
    }

    public final void z() {
        Uri uri;
        this.f2496D.removeCallbacks(this.f2523v);
        if (this.f2493A.d()) {
            return;
        }
        if (this.f2493A.e()) {
            this.f2501I = true;
            return;
        }
        synchronized (this.f2521t) {
            uri = this.f2498F;
        }
        this.f2501I = false;
        Map mapEmptyMap = Collections.emptyMap();
        H1.k(uri, "The uri must be set.");
        this.f2493A.g(new S0.p(this.f2527z, new C3188m(uri, 0L, 1, null, mapEmptyMap, 0L, -1L, null, 1, null), 4, this.f2519r), this.f2520s, this.f2514m.Y(4));
    }
}
