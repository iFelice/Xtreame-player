package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ee, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0714Ee implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13059G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0744Ge f13060H;

    public /* synthetic */ RunnableC0714Ee(C0744Ge c0744Ge, int i8) {
        this.f13059G = i8;
        this.f13060H = c0744Ge;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f13059G;
        C0744Ge c0744Ge = this.f13060H;
        switch (i8) {
            case 0:
                c0744Ge.c("firstFrameRendered", new String[0]);
                break;
            case 1:
                c0744Ge.c("surfaceCreated", new String[0]);
                break;
            default:
                c0744Ge.c("surfaceDestroyed", new String[0]);
                break;
        }
    }
}
