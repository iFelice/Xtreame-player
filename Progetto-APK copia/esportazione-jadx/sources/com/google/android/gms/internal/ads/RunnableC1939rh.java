package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1939rh implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20766G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2095uh f20767H;

    public /* synthetic */ RunnableC1939rh(C2095uh c2095uh, int i8) {
        this.f20766G = i8;
        this.f20767H = c2095uh;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f20766G;
        C2095uh c2095uh = this.f20767H;
        switch (i8) {
            case 0:
                c2095uh.getClass();
                c2095uh.f21347H.execute(new RunnableC1939rh(c2095uh, 1));
                break;
            default:
                c2095uh.i();
                break;
        }
    }
}
