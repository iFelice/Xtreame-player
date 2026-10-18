package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class KL implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14326G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1773oL f14327H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C1151cK f14328I;

    public /* synthetic */ KL(C1773oL c1773oL, C1151cK c1151cK, int i8) {
        this.f14326G = i8;
        this.f14327H = c1773oL;
        this.f14328I = c1151cK;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14326G) {
            case 0:
                C1773oL c1773oL = this.f14327H;
                c1773oL.getClass();
                int i8 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1007, new C1301fF(26, (Object) null));
                break;
            default:
                C1773oL c1773oL2 = this.f14327H;
                C1151cK c1151cK = this.f14328I;
                c1773oL2.getClass();
                synchronized (c1151cK) {
                }
                int i9 = Et.f13234a;
                C2032tL c2032tL2 = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL2.f20260I)).f20880G.f21498p;
                c2032tL2.i(c2032tL2.j(c2032tL2.f21059J.f20885e), 1013, new C1669mL(19, 0));
                break;
        }
    }
}
