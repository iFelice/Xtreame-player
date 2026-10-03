package com.bumptech.glide;

import F2.G;
import J2.t;
import J2.u;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.Log;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class n implements ComponentCallbacks2, J2.j {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public static final L2.f f11594Q;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final b f11595G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f11596H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final J2.h f11597I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final t f11598J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final J2.o f11599K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final u f11600L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final p000a.f f11601M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final J2.b f11602N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final CopyOnWriteArrayList f11603O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public L2.f f11604P;

    static {
        L2.f fVar = (L2.f) new L2.f().d(Bitmap.class);
        fVar.f4649Z = true;
        f11594Q = fVar;
        ((L2.f) new L2.f().d(H2.c.class)).f4649Z = true;
    }

    public n(b bVar, J2.h hVar, J2.o oVar, Context context) {
        t tVar = new t(3);
        G g8 = bVar.f11502L;
        this.f11600L = new u();
        p000a.f fVar = new p000a.f(this, 17);
        this.f11601M = fVar;
        this.f11595G = bVar;
        this.f11597I = hVar;
        this.f11599K = oVar;
        this.f11598J = tVar;
        this.f11596H = context;
        Context applicationContext = context.getApplicationContext();
        m mVar = new m(this, tVar);
        g8.getClass();
        boolean z7 = U4.a.b(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z7 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        J2.b cVar = z7 ? new J2.c(applicationContext, mVar) : new J2.m();
        this.f11602N = cVar;
        synchronized (bVar.f11503M) {
            if (bVar.f11503M.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            bVar.f11503M.add(this);
        }
        char[] cArr = P2.o.f5906a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            P2.o.f().post(fVar);
        } else {
            hVar.i(this);
        }
        hVar.i(cVar);
        this.f11603O = new CopyOnWriteArrayList(bVar.f11499I.f11529e);
        q(bVar.f11499I.a());
    }

    @Override // J2.j
    public final synchronized void e() {
        this.f11600L.e();
        o();
    }

    @Override // J2.j
    public final synchronized void j() {
        p();
        this.f11600L.j();
    }

    public final void k(M2.i iVar) {
        if (iVar == null) {
            return;
        }
        boolean zR = r(iVar);
        L2.c cVarH = iVar.h();
        if (zR) {
            return;
        }
        b bVar = this.f11595G;
        synchronized (bVar.f11503M) {
            try {
                Iterator it = bVar.f11503M.iterator();
                while (it.hasNext()) {
                    if (((n) it.next()).r(iVar)) {
                    }
                }
                if (cVarH != null) {
                    iVar.c(null);
                    cVarH.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void l() {
        try {
            Iterator it = P2.o.e(this.f11600L.f4128G).iterator();
            while (it.hasNext()) {
                k((M2.i) it.next());
            }
            this.f11600L.f4128G.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final l m(Integer num) {
        PackageInfo packageInfo;
        l lVar = new l(this.f11595G, this, Drawable.class, this.f11596H);
        l lVarG = lVar.G(num);
        Context context = lVar.f11552g0;
        l lVar2 = (l) lVarG.v(context.getTheme());
        ConcurrentHashMap concurrentHashMap = O2.b.f5564a;
        String packageName = context.getPackageName();
        ConcurrentHashMap concurrentHashMap2 = O2.b.f5564a;
        p173w2.i iVar = (p173w2.i) concurrentHashMap2.get(packageName);
        if (iVar == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e8) {
                Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e8);
                packageInfo = null;
            }
            O2.d dVar = new O2.d(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
            iVar = (p173w2.i) concurrentHashMap2.putIfAbsent(packageName, dVar);
            if (iVar == null) {
                iVar = dVar;
            }
        }
        return (l) lVar2.t(new O2.a(context.getResources().getConfiguration().uiMode & 48, iVar));
    }

    public final l n(String str) {
        return new l(this.f11595G, this, Drawable.class, this.f11596H).G(str);
    }

    public final synchronized void o() {
        t tVar = this.f11598J;
        tVar.f4125H = true;
        for (L2.c cVar : P2.o.e((Set) tVar.f4127J)) {
            if (cVar.isRunning()) {
                cVar.pause();
                ((Set) tVar.f4126I).add(cVar);
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // J2.j
    public final synchronized void onDestroy() {
        this.f11600L.onDestroy();
        l();
        t tVar = this.f11598J;
        Iterator it = P2.o.e((Set) tVar.f4127J).iterator();
        while (it.hasNext()) {
            tVar.b((L2.c) it.next());
        }
        ((Set) tVar.f4126I).clear();
        this.f11597I.a(this);
        this.f11597I.a(this.f11602N);
        P2.o.f().removeCallbacks(this.f11601M);
        this.f11595G.c(this);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i8) {
    }

    public final synchronized void p() {
        this.f11598J.f();
    }

    public final synchronized void q(L2.f fVar) {
        L2.f fVar2 = (L2.f) fVar.clone();
        if (fVar2.f4649Z && !fVar2.f4651b0) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        fVar2.f4651b0 = true;
        fVar2.f4649Z = true;
        this.f11604P = fVar2;
    }

    public final synchronized boolean r(M2.i iVar) {
        L2.c cVarH = iVar.h();
        if (cVarH == null) {
            return true;
        }
        if (!this.f11598J.b(cVarH)) {
            return false;
        }
        this.f11600L.f4128G.remove(iVar);
        iVar.c(null);
        return true;
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.f11598J + ", treeNode=" + this.f11599K + "}";
    }
}
