package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2062u implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21172G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2218x f21173H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f21174I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ int f21175J;

    public /* synthetic */ RunnableC2062u(C2218x c2218x, int i8, long j8) {
        this.f21173H = c2218x;
        this.f21175J = i8;
        this.f21174I = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f21172G;
        C2218x c2218x = this.f21173H;
        switch (i8) {
            case 0:
                c2218x.getClass();
                int i9 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) c2218x.f21780I).f20880G.f21498p;
                C1204dL c1204dLJ = c2032tL.j(c2032tL.f21059J.f20885e);
                c2032tL.i(c1204dLJ, 1018, new p149t0.d(this.f21175J, this.f21174I, c1204dLJ));
                break;
            default:
                c2218x.getClass();
                int i10 = Et.f13234a;
                C2032tL c2032tL2 = (C2032tL) ((SurfaceHolderCallbackC1979sK) c2218x.f21780I).f20880G.f21498p;
                c2032tL2.i(c2032tL2.j(c2032tL2.f21059J.f20885e), 1021, new C1669mL((AbstractC2090uc) null));
                break;
        }
    }

    public /* synthetic */ RunnableC2062u(C2218x c2218x, long j8, int i8) {
        this.f21173H = c2218x;
        this.f21174I = j8;
        this.f21175J = i8;
    }
}
