package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class NL implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14902G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1773oL f14903H;

    public /* synthetic */ NL(C1773oL c1773oL, GH gh, int i8) {
        this.f14902G = i8;
        this.f14903H = c1773oL;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f14902G;
        C1773oL c1773oL = this.f14903H;
        switch (i8) {
            case 0:
                c1773oL.getClass();
                int i9 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1031, new C1669mL(21, 0));
                break;
            default:
                c1773oL.getClass();
                int i10 = Et.f13234a;
                C2032tL c2032tL2 = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                c2032tL2.i(c2032tL2.l(), 1032, new C1669mL(26, 0));
                break;
        }
    }
}
