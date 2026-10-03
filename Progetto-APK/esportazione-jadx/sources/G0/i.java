package G0;

import B0.C0041c;
import C0.C0082g;
import C0.I;
import android.media.ResourceBusyException;
import android.media.UnsupportedSchemeException;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import p039f.RunnableC3004t;
import p094m0.AbstractC3124g;
import p094m0.C3130m;
import p094m0.C3131n;
import p094m0.C3136t;
import p094m0.O;
import z4.F;
import z4.H;
import z4.L;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class i implements r {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final UUID f3340G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0082g f3341H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0041c f3342I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashMap f3343J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f3344K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int[] f3345L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f3346M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final p096m2.u f3347N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final U4.b f3348O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final e f3349P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final long f3350Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final ArrayList f3351R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Set f3352S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Set f3353T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f3354U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public w f3355V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public d f3356W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public d f3357X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public Looper f3358Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public Handler f3359Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f3360a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public byte[] f3361b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public I f3362c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public volatile f f3363d0;

    public i(UUID uuid, C0082g c0082g, C0041c c0041c, HashMap map, boolean z7, int[] iArr, boolean z8, U4.b bVar, long j8) {
        uuid.getClass();
        H1.c("Use C.CLEARKEY_UUID instead", !AbstractC3124g.f26853b.equals(uuid));
        this.f3340G = uuid;
        this.f3341H = c0082g;
        this.f3342I = c0041c;
        this.f3343J = map;
        this.f3344K = z7;
        this.f3345L = iArr;
        this.f3346M = z8;
        this.f3348O = bVar;
        this.f3347N = new p096m2.u(this);
        this.f3349P = new e(this, 1);
        this.f3360a0 = 0;
        this.f3351R = new ArrayList();
        this.f3352S = Collections.newSetFromMap(new IdentityHashMap());
        this.f3353T = Collections.newSetFromMap(new IdentityHashMap());
        this.f3350Q = j8;
    }

    public static boolean b(d dVar) {
        dVar.p();
        if (dVar.f3324p != 1) {
            return false;
        }
        k error = dVar.getError();
        error.getClass();
        Throwable cause = error.getCause();
        return (cause instanceof ResourceBusyException) || Q3.b.o(cause);
    }

    public static ArrayList e(C3131n c3131n, UUID uuid, boolean z7) {
        ArrayList arrayList = new ArrayList(c3131n.f26963J);
        for (int i8 = 0; i8 < c3131n.f26963J; i8++) {
            C3130m c3130m = c3131n.f26960G[i8];
            if ((c3130m.a(uuid) || (AbstractC3124g.f26854c.equals(uuid) && c3130m.a(AbstractC3124g.f26853b))) && (c3130m.f26957K != null || z7)) {
                arrayList.add(c3130m);
            }
        }
        return arrayList;
    }

    public final l a(Looper looper, o oVar, C3136t c3136t, boolean z7) {
        ArrayList arrayListE;
        if (this.f3363d0 == null) {
            this.f3363d0 = new f(this, looper);
        }
        C3131n c3131n = c3136t.f27045s;
        d dVarD = null;
        if (c3131n == null) {
            int i8 = O.i(c3136t.f27041o);
            w wVar = this.f3355V;
            wVar.getClass();
            if (wVar.m() == 2 && x.f3384c) {
                return null;
            }
            int[] iArr = this.f3345L;
            for (int i9 = 0; i9 < iArr.length; i9++) {
                if (iArr[i9] == i8) {
                    if (i9 == -1 || wVar.m() == 1) {
                        return null;
                    }
                    d dVar = this.f3356W;
                    if (dVar == null) {
                        F f8 = H.f31804H;
                        d dVarD2 = d(d0.f31844K, true, null, z7);
                        this.f3351R.add(dVarD2);
                        this.f3356W = dVarD2;
                    } else {
                        dVar.d(null);
                    }
                    return this.f3356W;
                }
            }
            return null;
        }
        if (this.f3361b0 == null) {
            arrayListE = e(c3131n, this.f3340G, false);
            if (arrayListE.isEmpty()) {
                g gVar = new g("Media does not support uuid: " + this.f3340G);
                p117p0.x.d("DefaultDrmSessionMgr", "DRM error", gVar);
                if (oVar != null) {
                    oVar.e(gVar);
                }
                return new t(new k(6003, gVar));
            }
        } else {
            arrayListE = null;
        }
        if (this.f3344K) {
            for (d dVar2 : this.f3351R) {
                if (Objects.equals(dVar2.f3309a, arrayListE)) {
                    dVarD = dVar2;
                    break;
                }
            }
        } else {
            dVarD = this.f3357X;
        }
        if (dVarD == null) {
            dVarD = d(arrayListE, false, oVar, z7);
            if (!this.f3344K) {
                this.f3357X = dVarD;
            }
            this.f3351R.add(dVarD);
        } else {
            dVarD.d(oVar);
        }
        return dVarD;
    }

    public final d c(List list, boolean z7, o oVar) {
        this.f3355V.getClass();
        boolean z8 = this.f3346M | z7;
        w wVar = this.f3355V;
        int i8 = this.f3360a0;
        byte[] bArr = this.f3361b0;
        Looper looper = this.f3358Y;
        looper.getClass();
        I i9 = this.f3362c0;
        i9.getClass();
        d dVar = new d(this.f3340G, wVar, this.f3347N, this.f3349P, list, i8, z8, z7, bArr, this.f3343J, this.f3342I, looper, this.f3348O, i9);
        dVar.d(oVar);
        if (this.f3350Q != -9223372036854775807L) {
            dVar.d(null);
        }
        return dVar;
    }

    public final d d(List list, boolean z7, o oVar, boolean z8) {
        d dVarC = c(list, z7, oVar);
        boolean zB = b(dVarC);
        long j8 = this.f3350Q;
        Set set = this.f3353T;
        if (zB && !set.isEmpty()) {
            AbstractC1349gB it = L.r(set).iterator();
            while (it.hasNext()) {
                ((l) it.next()).c(null);
            }
            dVarC.c(oVar);
            if (j8 != -9223372036854775807L) {
                dVarC.c(null);
            }
            dVarC = c(list, z7, oVar);
        }
        if (!b(dVarC) || !z8) {
            return dVarC;
        }
        Set set2 = this.f3352S;
        if (set2.isEmpty()) {
            return dVarC;
        }
        AbstractC1349gB it2 = L.r(set2).iterator();
        while (it2.hasNext()) {
            ((h) it2.next()).release();
        }
        if (!set.isEmpty()) {
            AbstractC1349gB it3 = L.r(set).iterator();
            while (it3.hasNext()) {
                ((l) it3.next()).c(null);
            }
        }
        dVarC.c(oVar);
        if (j8 != -9223372036854775807L) {
            dVarC.c(null);
        }
        return c(list, z7, oVar);
    }

    @Override // G0.r
    public final void f(Looper looper, I i8) {
        synchronized (this) {
            try {
                Looper looper2 = this.f3358Y;
                if (looper2 == null) {
                    this.f3358Y = looper;
                    this.f3359Z = new Handler(looper);
                } else {
                    H1.i(looper2 == looper);
                    this.f3359Z.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f3362c0 = i8;
    }

    public final void g() {
        if (this.f3355V != null && this.f3354U == 0 && this.f3351R.isEmpty() && this.f3352S.isEmpty()) {
            w wVar = this.f3355V;
            wVar.getClass();
            wVar.release();
            this.f3355V = null;
        }
    }

    public final void h(boolean z7) {
        if (z7 && this.f3358Y == null) {
            p117p0.x.g("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread.", new IllegalStateException());
            return;
        }
        Thread threadCurrentThread = Thread.currentThread();
        Looper looper = this.f3358Y;
        looper.getClass();
        if (threadCurrentThread != looper.getThread()) {
            p117p0.x.g("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f3358Y.getThread().getName(), new IllegalStateException());
        }
    }

    @Override // G0.r
    public final l l(o oVar, C3136t c3136t) {
        h(false);
        H1.i(this.f3354U > 0);
        H1.j(this.f3358Y);
        return a(this.f3358Y, oVar, c3136t, true);
    }

    @Override // G0.r
    public final int m(C3136t c3136t) {
        String str;
        h(false);
        w wVar = this.f3355V;
        wVar.getClass();
        int iM = wVar.m();
        C3131n c3131n = c3136t.f27045s;
        if (c3131n != null) {
            if (this.f3361b0 != null) {
                return iM;
            }
            UUID uuid = this.f3340G;
            if (!e(c3131n, uuid, true).isEmpty()) {
                str = c3131n.f26962I;
                if (str == null && !"cenc".equals(str)) {
                    if ("cbcs".equals(str)) {
                        if (Build.VERSION.SDK_INT >= 25) {
                            return iM;
                        }
                    } else if (!"cbc1".equals(str) && !"cens".equals(str)) {
                        return iM;
                    }
                }
            } else if (c3131n.f26963J == 1 && c3131n.f26960G[0].a(AbstractC3124g.f26853b)) {
                p117p0.x.f("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + uuid);
                str = c3131n.f26962I;
                return str == null ? iM : iM;
            }
            return 1;
        }
        int i8 = O.i(c3136t.f27041o);
        int i9 = 0;
        while (true) {
            int[] iArr = this.f3345L;
            if (i9 >= iArr.length) {
                return 0;
            }
            if (iArr[i9] == i8) {
                if (i9 != -1) {
                    return iM;
                }
                return 0;
            }
            i9++;
        }
    }

    @Override // G0.r
    public final q n(o oVar, C3136t c3136t) {
        H1.i(this.f3354U > 0);
        H1.j(this.f3358Y);
        h hVar = new h(this, oVar);
        Handler handler = this.f3359Z;
        handler.getClass();
        handler.post(new RunnableC3004t(24, hVar, c3136t));
        return hVar;
    }

    @Override // G0.r
    public final void prepare() {
        w sVar;
        h(true);
        int i8 = this.f3354U;
        this.f3354U = i8 + 1;
        if (i8 != 0) {
            return;
        }
        int i9 = 0;
        if (this.f3355V == null) {
            UUID uuid = this.f3340G;
            this.f3341H.getClass();
            try {
                try {
                    sVar = new z(uuid);
                } catch (UnsupportedSchemeException e8) {
                    throw new C(e8);
                } catch (Exception e9) {
                    throw new C(e9);
                }
            } catch (C unused) {
                p117p0.x.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
                sVar = new s();
            }
            this.f3355V = sVar;
            sVar.f(new e(this, 0));
            return;
        }
        if (this.f3350Q == -9223372036854775807L) {
            return;
        }
        while (true) {
            ArrayList arrayList = this.f3351R;
            if (i9 >= arrayList.size()) {
                return;
            }
            ((d) arrayList.get(i9)).d(null);
            i9++;
        }
    }

    @Override // G0.r
    public final void release() {
        h(true);
        int i8 = this.f3354U - 1;
        this.f3354U = i8;
        if (i8 != 0) {
            return;
        }
        if (this.f3350Q != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.f3351R);
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                ((d) arrayList.get(i9)).c(null);
            }
        }
        AbstractC1349gB it = L.r(this.f3352S).iterator();
        while (it.hasNext()) {
            ((h) it.next()).release();
        }
        g();
    }
}
