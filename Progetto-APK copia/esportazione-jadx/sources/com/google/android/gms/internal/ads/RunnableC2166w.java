package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2166w implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21620G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2218x f21621H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C1151cK f21622I;

    public /* synthetic */ RunnableC2166w(C2218x c2218x, C1151cK c1151cK, int i8) {
        this.f21620G = i8;
        this.f21621H = c2218x;
        this.f21622I = c1151cK;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21620G) {
            case 0:
                C2218x c2218x = this.f21621H;
                c2218x.getClass();
                int i8 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) c2218x.f21780I).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1015, new C1669mL(23, 0));
                break;
            default:
                C2218x c2218x2 = this.f21621H;
                C1151cK c1151cK = this.f21622I;
                c2218x2.getClass();
                synchronized (c1151cK) {
                }
                int i9 = Et.f13234a;
                C2032tL c2032tL2 = (C2032tL) ((SurfaceHolderCallbackC1979sK) c2218x2.f21780I).f20880G.f21498p;
                C1204dL c1204dLJ = c2032tL2.j(c2032tL2.f21059J.f20885e);
                c2032tL2.i(c1204dLJ, 1020, new C1773oL(2, c1204dLJ, c1151cK));
                break;
        }
    }
}
