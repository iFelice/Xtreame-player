package y2;

import D0.C0117g;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collections;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class l implements InterfaceC3235g, Runnable, Comparable, Q2.b {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final J3.k f31316J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final M.c f31317K;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public com.bumptech.glide.f f31320N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public p173w2.i f31321O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public com.bumptech.glide.g f31322P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public v f31323Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f31324R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f31325S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public o f31326T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public p173w2.l f31327U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public j f31328V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f31329W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public long f31330X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f31331Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public Object f31332Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public Thread f31333a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public p173w2.i f31334b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public p173w2.i f31335c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Object f31336d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public p173w2.a f31337e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public com.bumptech.glide.load.data.e f31338f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public volatile InterfaceC3236h f31339g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public volatile boolean f31340h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public volatile boolean f31341i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f31342j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f31343k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f31344l0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final i f31313G = new i();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f31314H = new ArrayList();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Q2.e f31315I = new Q2.e();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final k f31318L = new k();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final C0117g f31319M = new C0117g();

    public l(J3.k kVar, M.c cVar) {
        this.f31316J = kVar;
        this.f31317K = cVar;
    }

    @Override // y2.InterfaceC3235g
    public final void a(p173w2.i iVar, Exception exc, com.bumptech.glide.load.data.e eVar, p173w2.a aVar) {
        eVar.c();
        z zVar = new z("Fetching data failed", Collections.singletonList(exc));
        Class clsA = eVar.a();
        zVar.f31414H = iVar;
        zVar.f31415I = aVar;
        zVar.f31416J = clsA;
        this.f31314H.add(zVar);
        if (Thread.currentThread() != this.f31333a0) {
            p(2);
        } else {
            q();
        }
    }

    @Override // y2.InterfaceC3235g
    public final void b() {
        p(2);
    }

    @Override // Q2.b
    public final Q2.e c() {
        return this.f31315I;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        l lVar = (l) obj;
        int iOrdinal = this.f31322P.ordinal() - lVar.f31322P.ordinal();
        return iOrdinal == 0 ? this.f31329W - lVar.f31329W : iOrdinal;
    }

    @Override // y2.InterfaceC3235g
    public final void d(p173w2.i iVar, Object obj, com.bumptech.glide.load.data.e eVar, p173w2.a aVar, p173w2.i iVar2) {
        this.f31334b0 = iVar;
        this.f31336d0 = obj;
        this.f31338f0 = eVar;
        this.f31337e0 = aVar;
        this.f31335c0 = iVar2;
        this.f31342j0 = iVar != this.f31313G.a().get(0);
        if (Thread.currentThread() != this.f31333a0) {
            p(3);
        } else {
            g();
        }
    }

    public final D e(com.bumptech.glide.load.data.e eVar, Object obj, p173w2.a aVar) {
        if (obj == null) {
            eVar.c();
            return null;
        }
        try {
            int i8 = P2.i.f5894b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            D dF = f(obj, aVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                j(jElapsedRealtimeNanos, "Decoded result " + dF, null);
            }
            return dF;
        } finally {
            eVar.c();
        }
    }

    public final D f(Object obj, p173w2.a aVar) {
        Class<?> cls = obj.getClass();
        i iVar = this.f31313G;
        B bC = iVar.c(cls);
        p173w2.l lVar = this.f31327U;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z7 = aVar == p173w2.a.f30984J || iVar.f31309r;
            p173w2.k kVar = F2.p.f3154i;
            Boolean bool = (Boolean) lVar.c(kVar);
            if (bool == null || (bool.booleanValue() && !z7)) {
                lVar = new p173w2.l();
                P2.d dVar = this.f31327U.f31000b;
                P2.d dVar2 = lVar.f31000b;
                dVar2.g(dVar);
                dVar2.put(kVar, Boolean.valueOf(z7));
            }
        }
        p173w2.l lVar2 = lVar;
        com.bumptech.glide.load.data.g gVarH = this.f31320N.b().h(obj);
        try {
            return bC.a(this.f31324R, this.f31325S, new p096m2.c(this, aVar, 9), lVar2, gVarH);
        } finally {
            gVarH.c();
        }
    }

    public final void g() {
        D dE;
        if (Log.isLoggable("DecodeJob", 2)) {
            j(this.f31330X, "Retrieved data", "data: " + this.f31336d0 + ", cache key: " + this.f31334b0 + ", fetcher: " + this.f31338f0);
        }
        C c8 = null;
        try {
            dE = e(this.f31338f0, this.f31336d0, this.f31337e0);
        } catch (z e8) {
            p173w2.i iVar = this.f31335c0;
            p173w2.a aVar = this.f31337e0;
            e8.f31414H = iVar;
            e8.f31415I = aVar;
            e8.f31416J = null;
            this.f31314H.add(e8);
            dE = null;
        }
        if (dE == null) {
            q();
            return;
        }
        p173w2.a aVar2 = this.f31337e0;
        boolean z7 = this.f31342j0;
        if (dE instanceof A) {
            ((A) dE).a();
        }
        if (((C) this.f31318L.f31312c) != null) {
            c8 = (C) C.f31241K.h();
            c8.f31245J = false;
            c8.f31244I = true;
            c8.f31243H = dE;
            dE = c8;
        }
        s();
        t tVar = (t) this.f31328V;
        synchronized (tVar) {
            tVar.f31385W = dE;
            tVar.f31386X = aVar2;
            tVar.f31393e0 = z7;
        }
        tVar.h();
        this.f31343k0 = 5;
        try {
            k kVar = this.f31318L;
            if (((C) kVar.f31312c) != null) {
                kVar.a(this.f31316J, this.f31327U);
            }
            if (c8 != null) {
                c8.a();
            }
            l();
        } catch (Throwable th) {
            if (c8 != null) {
                c8.a();
            }
            throw th;
        }
    }

    public final InterfaceC3236h h() {
        int iB = p156u.h.b(this.f31343k0);
        i iVar = this.f31313G;
        if (iB == 1) {
            return new E(iVar, this);
        }
        if (iB == 2) {
            return new C3233e(iVar.a(), iVar, this);
        }
        if (iB == 3) {
            return new H(iVar, this);
        }
        if (iB == 5) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: ".concat(p148t.a.o(this.f31343k0)));
    }

    public final int i(int i8) {
        int iB = p156u.h.b(i8);
        if (iB == 0) {
            switch (((n) this.f31326T).f31350d) {
                case 1:
                case 2:
                    return i(2);
                default:
                    return 2;
            }
        }
        if (iB == 1) {
            switch (((n) this.f31326T).f31350d) {
                case 1:
                    return i(3);
                default:
                    return 3;
            }
        }
        if (iB == 2) {
            return this.f31331Y ? 6 : 4;
        }
        if (iB == 3 || iB == 5) {
            return 6;
        }
        throw new IllegalArgumentException("Unrecognized stage: ".concat(p148t.a.o(i8)));
    }

    public final void j(long j8, String str, String str2) {
        StringBuilder sbL = p000a.r.l(str, " in ");
        sbL.append(P2.i.a(j8));
        sbL.append(", load key: ");
        sbL.append(this.f31323Q);
        sbL.append(str2 != null ? ", ".concat(str2) : HttpUrl.FRAGMENT_ENCODE_SET);
        sbL.append(", thread: ");
        sbL.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sbL.toString());
    }

    public final void k() {
        s();
        z zVar = new z("Failed to load resource", new ArrayList(this.f31314H));
        t tVar = (t) this.f31328V;
        synchronized (tVar) {
            tVar.f31388Z = zVar;
        }
        tVar.g();
        m();
    }

    public final void l() {
        boolean zB;
        C0117g c0117g = this.f31319M;
        synchronized (c0117g) {
            c0117g.f1936b = true;
            zB = c0117g.b();
        }
        if (zB) {
            o();
        }
    }

    public final void m() {
        boolean zB;
        C0117g c0117g = this.f31319M;
        synchronized (c0117g) {
            c0117g.f1937c = true;
            zB = c0117g.b();
        }
        if (zB) {
            o();
        }
    }

    public final void n() {
        boolean zB;
        C0117g c0117g = this.f31319M;
        synchronized (c0117g) {
            c0117g.f1935a = true;
            zB = c0117g.b();
        }
        if (zB) {
            o();
        }
    }

    public final void o() {
        C0117g c0117g = this.f31319M;
        synchronized (c0117g) {
            c0117g.f1936b = false;
            c0117g.f1935a = false;
            c0117g.f1937c = false;
        }
        k kVar = this.f31318L;
        kVar.f31310a = null;
        kVar.f31311b = null;
        kVar.f31312c = null;
        i iVar = this.f31313G;
        iVar.f31294c = null;
        iVar.f31295d = null;
        iVar.f31305n = null;
        iVar.f31298g = null;
        iVar.f31302k = null;
        iVar.f31300i = null;
        iVar.f31306o = null;
        iVar.f31301j = null;
        iVar.f31307p = null;
        iVar.f31292a.clear();
        iVar.f31303l = false;
        iVar.f31293b.clear();
        iVar.f31304m = false;
        this.f31340h0 = false;
        this.f31320N = null;
        this.f31321O = null;
        this.f31327U = null;
        this.f31322P = null;
        this.f31323Q = null;
        this.f31328V = null;
        this.f31343k0 = 0;
        this.f31339g0 = null;
        this.f31333a0 = null;
        this.f31334b0 = null;
        this.f31336d0 = null;
        this.f31337e0 = null;
        this.f31338f0 = null;
        this.f31330X = 0L;
        this.f31341i0 = false;
        this.f31314H.clear();
        this.f31317K.a(this);
    }

    public final void p(int i8) {
        B2.c cVar;
        this.f31344l0 = i8;
        t tVar = (t) this.f31328V;
        if (tVar.f31382T) {
            cVar = tVar.f31377O;
        } else {
            cVar = tVar.f31383U ? tVar.f31378P : tVar.f31376N;
        }
        cVar.execute(this);
    }

    public final void q() {
        this.f31333a0 = Thread.currentThread();
        int i8 = P2.i.f5894b;
        this.f31330X = SystemClock.elapsedRealtimeNanos();
        boolean zC = false;
        while (!this.f31341i0 && this.f31339g0 != null && !(zC = this.f31339g0.c())) {
            this.f31343k0 = i(this.f31343k0);
            this.f31339g0 = h();
            if (this.f31343k0 == 4) {
                p(2);
                return;
            }
        }
        if ((this.f31343k0 == 6 || this.f31341i0) && !zC) {
            k();
        }
    }

    public final void r() {
        int iB = p156u.h.b(this.f31344l0);
        if (iB == 0) {
            this.f31343k0 = i(1);
            this.f31339g0 = h();
            q();
        } else if (iB == 1) {
            q();
        } else {
            if (iB != 2) {
                throw new IllegalStateException("Unrecognized run reason: ".concat(p148t.a.n(this.f31344l0)));
            }
            g();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.bumptech.glide.load.data.e eVar = this.f31338f0;
        try {
            try {
                if (this.f31341i0) {
                    k();
                    if (eVar != null) {
                        eVar.c();
                        return;
                    }
                    return;
                }
                r();
                if (eVar != null) {
                    eVar.c();
                }
            } catch (C3232d e8) {
                throw e8;
            } catch (Throwable th) {
                if (Log.isLoggable("DecodeJob", 3)) {
                    Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.f31341i0 + ", stage: " + p148t.a.o(this.f31343k0), th);
                }
                if (this.f31343k0 != 5) {
                    this.f31314H.add(th);
                    k();
                }
                if (!this.f31341i0) {
                    throw th;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (eVar != null) {
                eVar.c();
            }
            throw th2;
        }
    }

    public final void s() {
        this.f31315I.a();
        if (this.f31340h0) {
            throw new IllegalStateException("Already notified", this.f31314H.isEmpty() ? null : (Throwable) U2.g(this.f31314H, 1));
        }
        this.f31340h0 = true;
    }
}
