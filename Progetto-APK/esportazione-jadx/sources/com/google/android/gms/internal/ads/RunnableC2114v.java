package com.google.android.gms.internal.ads;

import android.view.Surface;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2114v implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21416G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ long f21417H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f21418I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f21419J;

    public /* synthetic */ RunnableC2114v(C2218x c2218x, Surface surface, long j8) {
        this.f21418I = c2218x;
        this.f21419J = surface;
        this.f21417H = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f21416G;
        final long j8 = this.f21417H;
        Object obj = this.f21418I;
        final Object obj2 = this.f21419J;
        switch (i8) {
            case 0:
                C2218x c2218x = (C2218x) obj;
                c2218x.getClass();
                int i9 = Et.f13234a;
                C2135vK c2135vK = ((SurfaceHolderCallbackC1979sK) c2218x.f21780I).f20880G;
                C2032tL c2032tL = (C2032tL) c2135vK.f21498p;
                final C1204dL c1204dLL = c2032tL.l();
                c2032tL.i(c1204dLL, 26, new InterfaceC1119bo(c1204dLL, obj2, j8) { // from class: com.google.android.gms.internal.ads.qL

                    /* JADX INFO: renamed from: G, reason: collision with root package name */
                    public final /* synthetic */ Object f20565G;

                    {
                        this.f20565G = obj2;
                    }

                    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
                    public final void zza(Object obj3) {
                        ((InterfaceC1255eL) obj3).E();
                    }
                });
                if (c2135vK.f21468E == obj2) {
                    C1301fF c1301fF = new C1301fF(23);
                    p178x.e eVar = c2135vK.f21493k;
                    eVar.p(26, c1301fF);
                    eVar.o();
                }
                break;
            default:
                AbstractC2118v3 abstractC2118v3 = (AbstractC2118v3) obj2;
                abstractC2118v3.f21429G.a(j8, (String) obj);
                abstractC2118v3.f21429G.b(abstractC2118v3.toString());
                break;
        }
    }

    public RunnableC2114v(AbstractC2118v3 abstractC2118v3, String str, long j8) {
        this.f21418I = str;
        this.f21417H = j8;
        this.f21419J = abstractC2118v3;
    }
}
