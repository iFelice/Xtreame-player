package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class OL implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15159G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1773oL f15160H;

    public /* synthetic */ OL(C1773oL c1773oL, Exception exc, int i8) {
        this.f15159G = i8;
        this.f15160H = c1773oL;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = 0;
        int i9 = this.f15159G;
        C1773oL c1773oL = this.f15160H;
        switch (i9) {
            case 0:
                c1773oL.getClass();
                int i10 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1029, new C1669mL(24, i8));
                break;
            default:
                c1773oL.getClass();
                int i11 = Et.f13234a;
                C2032tL c2032tL2 = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                c2032tL2.i(c2032tL2.l(), 1014, new C1669mL(27, i8));
                break;
        }
    }
}
