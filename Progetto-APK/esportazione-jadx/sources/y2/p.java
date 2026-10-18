package y2;

import D0.U;
import android.os.SystemClock;
import android.util.Log;
import java.util.Map;
import java.util.concurrent.Executor;
import p086l.s1;

/* JADX INFO: loaded from: classes.dex */
public final class p implements u, A2.g, w {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f31354h = Log.isLoggable("Engine", 2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.e f31355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final U1.f f31356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final A2.f f31357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s1 f31358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final P0.j f31359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final F.d f31360f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C3231c f31361g;

    public p(A2.f fVar, A2.d dVar, B2.c cVar, B2.c cVar2, B2.c cVar3, B2.c cVar4) {
        this.f31357c = fVar;
        J3.k kVar = new J3.k(dVar);
        C3231c c3231c = new C3231c();
        this.f31361g = c3231c;
        synchronized (this) {
            synchronized (c3231c) {
                c3231c.f31280e = this;
            }
        }
        this.f31356b = new U1.f(16, null);
        this.f31355a = new p096m2.e(9, (Object) null);
        s1 s1Var = new s1();
        s1Var.f26380g = new p096m2.u(new M.d(150), new U(s1Var, 26), Q2.d.f6032a, 28);
        s1Var.f26374a = cVar;
        s1Var.f26375b = cVar2;
        s1Var.f26376c = cVar3;
        s1Var.f26377d = cVar4;
        s1Var.f26378e = this;
        s1Var.f26379f = this;
        this.f31358d = s1Var;
        this.f31360f = new F.d(kVar);
        this.f31359e = new P0.j(2);
        fVar.f624e = this;
    }

    public static void d(String str, long j8, p173w2.i iVar) {
        StringBuilder sbL = p000a.r.l(str, " in ");
        sbL.append(P2.i.a(j8));
        sbL.append("ms, key: ");
        sbL.append(iVar);
        Log.v("Engine", sbL.toString());
    }

    public static void g(D d6) {
        if (!(d6 instanceof x)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((x) d6).c();
    }

    public final k a(com.bumptech.glide.f fVar, Object obj, p173w2.i iVar, int i8, int i9, Class cls, Class cls2, com.bumptech.glide.g gVar, o oVar, P2.d dVar, boolean z7, boolean z8, p173w2.l lVar, boolean z9, boolean z10, boolean z11, boolean z12, L2.g gVar2, Executor executor) {
        long jElapsedRealtimeNanos;
        if (f31354h) {
            int i10 = P2.i.f5894b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        long j8 = jElapsedRealtimeNanos;
        this.f31356b.getClass();
        v vVar = new v(obj, iVar, i8, i9, dVar, cls, cls2, lVar);
        synchronized (this) {
            try {
                x xVarC = c(vVar, z9, j8);
                if (xVarC == null) {
                    return h(fVar, obj, iVar, i8, i9, cls, cls2, gVar, oVar, dVar, z7, z8, lVar, z9, z10, z11, z12, gVar2, executor, vVar, j8);
                }
                ((L2.h) gVar2).k(xVarC, p173w2.a.f30985K, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final x b(p173w2.i iVar) {
        x xVar;
        Object obj;
        A2.f fVar = this.f31357c;
        synchronized (fVar) {
            P2.j jVar = (P2.j) fVar.f5897a.remove(iVar);
            xVar = null;
            if (jVar == null) {
                obj = null;
            } else {
                fVar.f5899c -= (long) jVar.f5896b;
                obj = jVar.f5895a;
            }
        }
        D d6 = (D) obj;
        if (d6 != null) {
            xVar = d6 instanceof x ? (x) d6 : new x(d6, true, true, iVar, this);
        }
        if (xVar != null) {
            xVar.a();
            this.f31361g.a(iVar, xVar);
        }
        return xVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final x c(v vVar, boolean z7, long j8) {
        x xVar;
        if (!z7) {
            return null;
        }
        C3231c c3231c = this.f31361g;
        synchronized (c3231c) {
            C3230b c3230b = (C3230b) c3231c.f31278c.get(vVar);
            if (c3230b == null) {
                xVar = null;
            } else {
                xVar = (x) c3230b.get();
                if (xVar == null) {
                    c3231c.b(c3230b);
                }
            }
        }
        if (xVar != null) {
            xVar.a();
        }
        if (xVar != null) {
            if (f31354h) {
                d("Loaded resource from active resources", j8, vVar);
            }
            return xVar;
        }
        x xVarB = b(vVar);
        if (xVarB == null) {
            return null;
        }
        if (f31354h) {
            d("Loaded resource from cache", j8, vVar);
        }
        return xVarB;
    }

    public final synchronized void e(t tVar, p173w2.i iVar, x xVar) {
        if (xVar != null) {
            try {
                if (xVar.f31403G) {
                    this.f31361g.a(iVar, xVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        p096m2.e eVar = this.f31355a;
        eVar.getClass();
        Map map = (Map) (tVar.f31384V ? eVar.f27216I : eVar.f27215H);
        if (tVar.equals(map.get(iVar))) {
            map.remove(iVar);
        }
    }

    public final void f(p173w2.i iVar, x xVar) {
        C3231c c3231c = this.f31361g;
        synchronized (c3231c) {
            C3230b c3230b = (C3230b) c3231c.f31278c.remove(iVar);
            if (c3230b != null) {
                c3230b.f31275c = null;
                c3230b.clear();
            }
        }
        if (xVar.f31403G) {
        } else {
            this.f31359e.b(xVar, false);
        }
    }

    public final k h(com.bumptech.glide.f fVar, Object obj, p173w2.i iVar, int i8, int i9, Class cls, Class cls2, com.bumptech.glide.g gVar, o oVar, P2.d dVar, boolean z7, boolean z8, p173w2.l lVar, boolean z9, boolean z10, boolean z11, boolean z12, L2.g gVar2, Executor executor, v vVar, long j8) {
        p096m2.e eVar = this.f31355a;
        t tVar = (t) ((Map) (z12 ? eVar.f27216I : eVar.f27215H)).get(vVar);
        if (tVar != null) {
            tVar.a(gVar2, executor);
            if (f31354h) {
                d("Added to existing load", j8, vVar);
            }
            return new k(this, gVar2, tVar);
        }
        t tVar2 = (t) ((M.c) this.f31358d.f26380g).h();
        p102n0.c.c(tVar2, "Argument must not be null");
        synchronized (tVar2) {
            tVar2.f31380R = vVar;
            tVar2.f31381S = z9;
            tVar2.f31382T = z10;
            tVar2.f31383U = z11;
            tVar2.f31384V = z12;
        }
        F.d dVar2 = this.f31360f;
        l lVar2 = (l) ((M.c) dVar2.f2963J).h();
        p102n0.c.c(lVar2, "Argument must not be null");
        int i10 = dVar2.f2961H;
        dVar2.f2961H = i10 + 1;
        i iVar2 = lVar2.f31313G;
        iVar2.f31294c = fVar;
        iVar2.f31295d = obj;
        iVar2.f31305n = iVar;
        iVar2.f31296e = i8;
        iVar2.f31297f = i9;
        iVar2.f31307p = oVar;
        iVar2.f31298g = cls;
        iVar2.f31299h = lVar2.f31316J;
        iVar2.f31302k = cls2;
        iVar2.f31306o = gVar;
        iVar2.f31300i = lVar;
        iVar2.f31301j = dVar;
        iVar2.f31308q = z7;
        iVar2.f31309r = z8;
        lVar2.f31320N = fVar;
        lVar2.f31321O = iVar;
        lVar2.f31322P = gVar;
        lVar2.f31323Q = vVar;
        lVar2.f31324R = i8;
        lVar2.f31325S = i9;
        lVar2.f31326T = oVar;
        lVar2.f31331Y = z12;
        lVar2.f31327U = lVar;
        lVar2.f31328V = tVar2;
        lVar2.f31329W = i10;
        lVar2.f31344l0 = 1;
        lVar2.f31332Z = obj;
        p096m2.e eVar2 = this.f31355a;
        eVar2.getClass();
        ((Map) (tVar2.f31384V ? eVar2.f27216I : eVar2.f27215H)).put(vVar, tVar2);
        tVar2.a(gVar2, executor);
        tVar2.k(lVar2);
        if (f31354h) {
            d("Started new load", j8, vVar);
        }
        return new k(this, gVar2, tVar2);
    }
}
