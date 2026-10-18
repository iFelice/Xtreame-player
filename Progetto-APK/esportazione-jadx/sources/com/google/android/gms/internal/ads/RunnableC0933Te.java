package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Te, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0933Te implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16687G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f16688H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f16689I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f16690J;

    public /* synthetic */ RunnableC0933Te(Object obj, boolean z7, long j8, int i8) {
        this.f16687G = i8;
        this.f16690J = obj;
        this.f16688H = z7;
        this.f16689I = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f16687G;
        boolean z7 = this.f16688H;
        long j8 = this.f16689I;
        Object obj = this.f16690J;
        switch (i8) {
            case 0:
                ((TextureViewSurfaceTextureListenerC0975We) obj).f17263I.y(j8, z7);
                break;
            case 1:
                ((InterfaceC0863Oe) obj).y(j8, z7);
                break;
            default:
                ((AbstractC0990Xf) obj).f17457G.y(j8, z7);
                break;
        }
    }
}
