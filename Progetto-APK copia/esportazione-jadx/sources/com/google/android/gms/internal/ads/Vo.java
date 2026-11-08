package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Vo implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17116G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Wo f17117H;

    public /* synthetic */ Vo(Wo wo, int i8) {
        this.f17116G = i8;
        this.f17117H = wo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f17116G;
        Wo wo = this.f17117H;
        switch (i8) {
            case 0:
                wo.a();
                break;
            default:
                wo.a();
                break;
        }
    }
}
