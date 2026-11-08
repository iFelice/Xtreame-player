package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1991sh implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20918G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2095uh f20919H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f20920I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ int f20921J;

    public /* synthetic */ RunnableC1991sh(C2095uh c2095uh, int i8, int i9, int i10) {
        this.f20918G = i10;
        this.f20919H = c2095uh;
        this.f20920I = i8;
        this.f20921J = i9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f20918G;
        int i9 = this.f20921J;
        int i10 = this.f20920I;
        C2095uh c2095uh = this.f20919H;
        switch (i8) {
            case 0:
                c2095uh.m(i10 - 1, i9);
                break;
            default:
                c2095uh.getClass();
                c2095uh.f21347H.execute(new RunnableC1991sh(c2095uh, i10, i9, 0));
                break;
        }
    }
}
