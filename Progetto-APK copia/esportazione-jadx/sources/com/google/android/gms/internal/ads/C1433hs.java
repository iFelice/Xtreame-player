package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.util.Pair;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p021c4.C0621y;
import p090l3.C3099q;
import p090l3.C3117z0;
import p090l3.InterfaceC3067a;
import p090l3.InterfaceC3110w;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1433hs implements p051g3.b, InterfaceC1022Zj, InterfaceC0779Ij, InterfaceC1993sj, InterfaceC0659Aj, InterfaceC3067a, InterfaceC1838pj, InterfaceC0924Sj, InterfaceC2305yj, InterfaceC0869Ok {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final C0738Fn f19172O;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AtomicReference f19164G = new AtomicReference();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicReference f19165H = new AtomicReference();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicReference f19166I = new AtomicReference();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AtomicReference f19167J = new AtomicReference();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final AtomicReference f19168K = new AtomicReference();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final AtomicBoolean f19169L = new AtomicBoolean(true);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AtomicBoolean f19170M = new AtomicBoolean(false);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final AtomicBoolean f19171N = new AtomicBoolean(false);

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ArrayBlockingQueue f19173P = new ArrayBlockingQueue(((Integer) C3099q.f26624d.f26627c.a(Q7.e8)).intValue());

    public C1433hs(C0738Fn c0738Fn) {
        this.f19172O = c0738Fn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
        this.f19169L.set(true);
        this.f19171N.set(false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void b() {
    }

    public final synchronized InterfaceC3110w c() {
        return (InterfaceC3110w) this.f19164G.get();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2305yj
    public final void d(C3117z0 c3117z0) {
        U2.m.f(this.f19168K, new C1890qj(8, c3117z0));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0924Sj
    public final void e(p090l3.e1 e1Var) {
        U2.m.f(this.f19166I, new C1115bk(e1Var, 3));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void g(InterfaceC1211dd interfaceC1211dd, String str, String str2) {
    }

    public final void i(p090l3.U u7) {
        this.f19165H.set(u7);
        this.f19170M.set(true);
        m();
    }

    public final void m() {
        if (this.f19170M.get() && this.f19171N.get()) {
            ArrayBlockingQueue arrayBlockingQueue = this.f19173P;
            Iterator it = arrayBlockingQueue.iterator();
            while (it.hasNext()) {
                U2.m.f(this.f19165H, new C0864Of((Pair) it.next(), 26));
            }
            arrayBlockingQueue.clear();
            this.f19169L.set(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final synchronized void n() {
        U2.m.f(this.f19164G, new C0621y(19));
        U2.m.f(this.f19167J, new C0621y(20));
        this.f19171N.set(true);
        m();
    }

    @Override // p051g3.b
    public final synchronized void o(String str, String str2) {
        if (!this.f19169L.get()) {
            Object obj = this.f19165H.get();
            if (obj != null) {
                try {
                    ((p090l3.U) obj).G2(str, str2);
                } catch (RemoteException e8) {
                    p120p3.h.i("#007 Could not call remote method.", e8);
                } catch (NullPointerException e9) {
                    p120p3.h.h("NullPointerException occurs when invoking a method from a delegating listener.", e9);
                }
            }
            return;
        }
        if (!this.f19173P.offer(new Pair(str, str2))) {
            p120p3.h.b("The queue for app events is full, dropping the new event.");
            C0738Fn c0738Fn = this.f19172O;
            if (c0738Fn != null) {
                C0871Om c0871OmA = c0738Fn.a();
                c0871OmA.n("action", "dae_action");
                c0871OmA.n("dae_name", str);
                c0871OmA.n("dae_data", str2);
                c0871OmA.u();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void q() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.aa)).booleanValue()) {
            U2.m.f(this.f19164G, new C0621y(26));
        }
        U2.m.f(this.f19168K, new C0621y(18));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void u() {
        U2.m.f(this.f19164G, new C0621y(22));
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.aa)).booleanValue()) {
            return;
        }
        U2.m.f(this.f19164G, new C0621y(26));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        C1890qj c1890qj = new C1890qj(5, c3117z0);
        AtomicReference atomicReference = this.f19164G;
        U2.m.f(atomicReference, c1890qj);
        U2.m.f(atomicReference, new C1890qj(6, c3117z0));
        U2.m.f(this.f19167J, new C1890qj(7, c3117z0));
        this.f19169L.set(false);
        this.f19173P.clear();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zza() {
        U2.m.f(this.f19164G, new C0621y(16));
        U2.m.f(this.f19168K, new C0621y(17));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzb() {
        U2.m.f(this.f19164G, new C0621y(21));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzc() {
        U2.m.f(this.f19164G, new C0621y(23));
        C0621y c0621y = new C0621y(24);
        AtomicReference atomicReference = this.f19168K;
        U2.m.f(atomicReference, c0621y);
        U2.m.f(atomicReference, new C0621y(25));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        U2.m.f(this.f19164G, new C0621y(15));
    }
}
