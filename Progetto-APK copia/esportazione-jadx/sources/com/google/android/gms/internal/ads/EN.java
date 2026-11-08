package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class EN implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12974G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ KN f12975H;

    public /* synthetic */ EN(KN kn, int i8) {
        this.f12974G = i8;
        this.f12975H = kn;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f12974G;
        KN kn = this.f12975H;
        switch (i8) {
            case 0:
                kn.f14366k0 = true;
                break;
            case 1:
                kn.q();
                break;
            default:
                if (!kn.f14372q0) {
                    InterfaceC2086uN interfaceC2086uN = kn.f14350U;
                    interfaceC2086uN.getClass();
                    interfaceC2086uN.c(kn);
                }
                break;
        }
    }
}
