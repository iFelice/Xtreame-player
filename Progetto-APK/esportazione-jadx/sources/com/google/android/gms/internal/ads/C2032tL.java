package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2032tL implements InterfaceC1152cL {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC1840pl f21056G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1521je f21057H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C2196we f21058I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C1980sL f21059J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final SparseArray f21060K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public p178x.e f21061L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public InterfaceC0959Vc f21062M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public C2054ts f21063N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f21064O;

    public C2032tL(InterfaceC1840pl interfaceC1840pl) {
        interfaceC1840pl.getClass();
        this.f21056G = interfaceC1840pl;
        int i8 = Et.f13234a;
        Looper looperMyLooper = Looper.myLooper();
        this.f21061L = new p178x.e(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, interfaceC1840pl, new C1669mL());
        C1521je c1521je = new C1521je();
        this.f21057H = c1521je;
        this.f21058I = new C2196we();
        this.f21059J = new C1980sL(c1521je);
        this.f21060K = new SparseArray();
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void a(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL, IOException iOException, boolean z7) {
        C1204dL c1204dLK = k(i8, c2190wN);
        E3.a aVar = new E3.a();
        aVar.f2826H = c1204dLK;
        aVar.f2827I = c1827pN;
        aVar.f2828J = c1721nL;
        aVar.f2829K = iOException;
        aVar.f2825G = z7;
        i(c1204dLK, 1003, aVar);
    }

    public final void b(InterfaceC0959Vc interfaceC0959Vc, Looper looper) {
        boolean z7 = true;
        if (this.f21062M != null && !this.f21059J.f20882b.isEmpty()) {
            z7 = false;
        }
        p113o3.r.M(z7);
        interfaceC0959Vc.getClass();
        this.f21062M = interfaceC0959Vc;
        this.f21063N = ((Nr) this.f21056G).a(looper, null);
        p178x.e eVar = this.f21061L;
        this.f21061L = new p178x.e((CopyOnWriteArraySet) eVar.f31132f, looper, (InterfaceC1840pl) eVar.f31129c, new C0871Om(29, this, interfaceC0959Vc), eVar.f31128b);
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void c(int i8, C2190wN c2190wN, C1721nL c1721nL) {
        C1204dL c1204dLK = k(i8, c2190wN);
        i(c1204dLK, 1004, new C1773oL(0, c1204dLK, c1721nL));
    }

    public final C1204dL d() {
        return j(this.f21059J.f20884d);
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void e(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        i(k(i8, c2190wN), 1000, new C1301fF((Object) null));
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void f(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        i(k(i8, c2190wN), 1002, new C1669mL(18, (AbstractC1411hL) null));
    }

    public final C1204dL g(AbstractC0774Ie abstractC0774Ie, int i8, C2190wN c2190wN) {
        C2190wN c2190wN2 = true == abstractC0774Ie.o() ? null : c2190wN;
        ((Nr) this.f21056G).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z7 = abstractC0774Ie.equals(this.f21062M.zzn()) && i8 == this.f21062M.zzd();
        long jW = 0;
        if (c2190wN2 == null || !c2190wN2.b()) {
            if (z7) {
                jW = this.f21062M.zzj();
            } else if (!abstractC0774Ie.o()) {
                abstractC0774Ie.e(i8, this.f21058I, 0L).getClass();
                jW = Et.w(0L);
            }
        } else if (z7 && this.f21062M.zzb() == c2190wN2.f21691b && this.f21062M.zzc() == c2190wN2.f21692c) {
            jW = this.f21062M.zzk();
        }
        return new C1204dL(jElapsedRealtime, abstractC0774Ie, i8, c2190wN2, jW, this.f21062M.zzn(), this.f21062M.zzd(), this.f21059J.f20884d, this.f21062M.zzk(), this.f21062M.zzm());
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void h(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        i(k(i8, c2190wN), WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, new C1669mL(20, (AbstractC1411hL) null));
    }

    public final void i(C1204dL c1204dL, int i8, InterfaceC1119bo interfaceC1119bo) {
        this.f21060K.put(i8, c1204dL);
        p178x.e eVar = this.f21061L;
        eVar.p(i8, interfaceC1119bo);
        eVar.o();
    }

    public final C1204dL j(C2190wN c2190wN) {
        this.f21062M.getClass();
        AbstractC0774Ie abstractC0774Ie = c2190wN == null ? null : (AbstractC0774Ie) this.f21059J.f20883c.get(c2190wN);
        if (c2190wN != null && abstractC0774Ie != null) {
            return g(abstractC0774Ie, abstractC0774Ie.n(c2190wN.f21690a, this.f21057H).f19467c, c2190wN);
        }
        int iZzd = this.f21062M.zzd();
        AbstractC0774Ie abstractC0774IeZzn = this.f21062M.zzn();
        if (iZzd >= abstractC0774IeZzn.c()) {
            abstractC0774IeZzn = AbstractC0774Ie.f13891a;
        }
        return g(abstractC0774IeZzn, iZzd, null);
    }

    public final C1204dL k(int i8, C2190wN c2190wN) {
        InterfaceC0959Vc interfaceC0959Vc = this.f21062M;
        interfaceC0959Vc.getClass();
        if (c2190wN != null) {
            return ((AbstractC0774Ie) this.f21059J.f20883c.get(c2190wN)) != null ? j(c2190wN) : g(AbstractC0774Ie.f13891a, i8, c2190wN);
        }
        AbstractC0774Ie abstractC0774IeZzn = interfaceC0959Vc.zzn();
        if (i8 >= abstractC0774IeZzn.c()) {
            abstractC0774IeZzn = AbstractC0774Ie.f13891a;
        }
        return g(abstractC0774IeZzn, i8, null);
    }

    public final C1204dL l() {
        return j(this.f21059J.f20886f);
    }
}
