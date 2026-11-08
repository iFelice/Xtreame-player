package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ae, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0654Ae implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12013G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f12014H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f12015I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ AbstractC0699De f12016J;

    public /* synthetic */ RunnableC0654Ae(AbstractC0699De abstractC0699De, int i8, int i9, int i10) {
        this.f12013G = i10;
        this.f12014H = i8;
        this.f12015I = i9;
        this.f12016J = abstractC0699De;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f12013G;
        int i9 = this.f12015I;
        int i10 = this.f12014H;
        AbstractC0699De abstractC0699De = this.f12016J;
        switch (i8) {
            case 0:
                InterfaceC0684Ce interfaceC0684Ce = ((TextureViewSurfaceTextureListenerC0669Be) abstractC0699De).f12398V;
                if (interfaceC0684Ce != null) {
                    ((C0744Ge) interfaceC0684Ce).j(i10, i9);
                }
                break;
            default:
                InterfaceC0684Ce interfaceC0684Ce2 = ((TextureViewSurfaceTextureListenerC0975We) abstractC0699De).f17266L;
                if (interfaceC0684Ce2 != null) {
                    ((C0744Ge) interfaceC0684Ce2).j(i10, i9);
                }
                break;
        }
    }
}
