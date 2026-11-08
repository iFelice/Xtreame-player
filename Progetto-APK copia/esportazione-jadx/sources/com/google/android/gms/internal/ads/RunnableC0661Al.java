package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Al, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0661Al implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12027G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0721El f12028H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ InterfaceViewOnClickListenerC1220dm f12029I;

    public /* synthetic */ RunnableC0661Al(C0721El c0721El, InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm, int i8) {
        this.f12027G = i8;
        this.f12028H = c0721El;
        this.f12029I = interfaceViewOnClickListenerC1220dm;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f12027G;
        InterfaceViewOnClickListenerC1220dm interfaceViewOnClickListenerC1220dm = this.f12029I;
        C0721El c0721El = this.f12028H;
        switch (i8) {
            case 0:
                c0721El.u(interfaceViewOnClickListenerC1220dm);
                break;
            default:
                c0721El.v(interfaceViewOnClickListenerC1220dm);
                break;
        }
    }
}
