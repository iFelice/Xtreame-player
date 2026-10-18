package com.google.android.gms.internal.ads;

import android.os.Looper;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ON extends AbstractC1257eN {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final VB f15162h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InterfaceC2241xM f15163i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f15164j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f15165k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f15166l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f15167m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15168n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public InterfaceC1615lJ f15169o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public C2225x6 f15170p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final MN f15171q;

    public /* synthetic */ ON(C2225x6 c2225x6, VB vb, MN mn, GH gh, int i8) {
        C2272y1 c2272y1 = InterfaceC2241xM.f21878q;
        this.f15170p = c2225x6;
        this.f15162h = vb;
        this.f15171q = mn;
        this.f15163i = c2272y1;
        this.f15164j = i8;
        this.f15165k = true;
        this.f15166l = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void a(InterfaceC2138vN interfaceC2138vN) {
        KN kn = (KN) interfaceC2138vN;
        if (kn.f14355Z) {
            for (TN tn : kn.f14352W) {
                tn.n();
                if (tn.f16631A != null) {
                    tn.f16631A = null;
                    tn.f16637f = null;
                }
            }
        }
        JO jo = kn.f14344O;
        GO go = jo.f14154c;
        if (go != null) {
            go.a(true);
        }
        jo.f14152a.execute(new RunnableC1026Zn(kn, 25));
        jo.f14153b.run();
        kn.f14349T.removeCallbacksAndMessages(null);
        kn.f14350U = null;
        kn.f14372q0 = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final InterfaceC2138vN b(C2190wN c2190wN, CO co, long j8) {
        InterfaceC1556kC interfaceC1556kCMo5zza = this.f15162h.mo5zza();
        InterfaceC1615lJ interfaceC1615lJ = this.f15169o;
        if (interfaceC1615lJ != null) {
            interfaceC1556kCMo5zza.f(interfaceC1615lJ);
        }
        C1239e5 c1239e5 = c().f21836b;
        c1239e5.getClass();
        p113o3.r.x(this.f18523g);
        C1093bD c1093bD = new C1093bD((O) this.f15171q.f14706G);
        C2137vM c2137vM = new C2137vM(this.f18520d.f21518b, c2190wN);
        C1294f8 c1294f8 = new C1294f8((CopyOnWriteArrayList) this.f18519c.f18728J, c2190wN, 8);
        long jT = Et.t(-9223372036854775807L);
        return new KN(c1239e5.f18481a, interfaceC1556kCMo5zza, c1093bD, this.f15163i, c2137vM, c1294f8, this, co, this.f15164j, jT);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final synchronized C2225x6 c() {
        return this.f15170p;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void j(InterfaceC1615lJ interfaceC1615lJ) {
        this.f15169o = interfaceC1615lJ;
        Looper.myLooper().getClass();
        p113o3.r.x(this.f18523g);
        t();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void m() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final synchronized void p(C2225x6 c2225x6) {
        this.f15170p = c2225x6;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void r() {
    }

    public final void s(long j8, boolean z7, boolean z8) {
        if (j8 == -9223372036854775807L) {
            j8 = this.f15166l;
        }
        if (!this.f15165k && this.f15166l == j8 && this.f15167m == z7 && this.f15168n == z8) {
            return;
        }
        this.f15166l = j8;
        this.f15167m = z7;
        this.f15168n = z8;
        this.f15165k = false;
        t();
    }

    public final void t() {
        long j8 = this.f15166l;
        boolean z7 = this.f15167m;
        boolean z8 = this.f15168n;
        C2225x6 c2225x6C = c();
        AbstractC0774Ie xn = new XN(j8, j8, z7, c2225x6C, z8 ? c2225x6C.f21837c : null);
        if (this.f15165k) {
            xn = new LN(xn);
        }
        k(xn);
    }
}
