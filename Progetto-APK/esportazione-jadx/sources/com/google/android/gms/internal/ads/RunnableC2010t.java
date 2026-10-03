package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2010t implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21019G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f21020H;

    public /* synthetic */ RunnableC2010t(Object obj, String str, long j8, long j9, int i8) {
        this.f21019G = i8;
        this.f21020H = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f21019G;
        Object obj = this.f21020H;
        switch (i8) {
            case 0:
                C2218x c2218x = (C2218x) obj;
                c2218x.getClass();
                int i9 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) c2218x.f21780I).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1016, new C1669mL(25, (AbstractC1463iL) null));
                break;
            default:
                C1773oL c1773oL = (C1773oL) obj;
                c1773oL.getClass();
                int i10 = Et.f13234a;
                C2032tL c2032tL2 = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                c2032tL2.i(c2032tL2.l(), 1008, new C1669mL(11, (AbstractC1463iL) null));
                break;
        }
    }
}
