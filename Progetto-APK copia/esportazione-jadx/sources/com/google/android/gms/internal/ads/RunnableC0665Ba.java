package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ba, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0665Ba implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12365G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2244xa f12366H;

    public /* synthetic */ RunnableC0665Ba(C2244xa c2244xa, int i8) {
        this.f12365G = i8;
        this.f12366H = c2244xa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f12365G;
        C2244xa c2244xa = this.f12366H;
        switch (i8) {
            case 0:
                c2244xa.f21879G.destroy();
                break;
            default:
                c2244xa.f21879G.destroy();
                break;
        }
    }
}
