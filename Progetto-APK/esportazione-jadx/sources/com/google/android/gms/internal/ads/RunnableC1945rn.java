package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1945rn implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f20776G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1997sn f20777H;

    public /* synthetic */ RunnableC1945rn(C1997sn c1997sn, int i8) {
        this.f20776G = i8;
        this.f20777H = c1997sn;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f20776G;
        C1997sn c1997sn = this.f20777H;
        switch (i8) {
            case 0:
                c1997sn.a();
                break;
            case 1:
                c1997sn.a();
                break;
            default:
                c1997sn.getClass();
                c1997sn.f20971c.execute(new RunnableC1945rn(c1997sn, 1));
                break;
        }
    }
}
