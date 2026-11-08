package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Nf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0850Nf implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14934G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0715Ef f14935H;

    public /* synthetic */ RunnableC0850Nf(InterfaceC0715Ef interfaceC0715Ef, int i8) {
        this.f14934G = i8;
        this.f14935H = interfaceC0715Ef;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f14934G;
        InterfaceC0715Ef interfaceC0715Ef = this.f14935H;
        switch (i8) {
            case 0:
                interfaceC0715Ef.destroy();
                break;
            case 1:
                interfaceC0715Ef.onResume();
                break;
            case 2:
                interfaceC0715Ef.onPause();
                break;
            case 3:
                interfaceC0715Ef.destroy();
                break;
            case 4:
                interfaceC0715Ef.w("onSdkImpression", new p132r.f(0));
                break;
            case 5:
                interfaceC0715Ef.destroy();
                break;
            default:
                interfaceC0715Ef.k0();
                break;
        }
    }
}
