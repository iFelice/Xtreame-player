package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ze, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2352ze implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22172G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ TextureViewSurfaceTextureListenerC0669Be f22173H;

    public /* synthetic */ RunnableC2352ze(TextureViewSurfaceTextureListenerC0669Be textureViewSurfaceTextureListenerC0669Be, int i8) {
        this.f22172G = i8;
        this.f22173H = textureViewSurfaceTextureListenerC0669Be;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f22172G;
        TextureViewSurfaceTextureListenerC0669Be textureViewSurfaceTextureListenerC0669Be = this.f22173H;
        switch (i8) {
            case 0:
                InterfaceC0684Ce interfaceC0684Ce = textureViewSurfaceTextureListenerC0669Be.f12398V;
                if (interfaceC0684Ce != null) {
                    ((C0744Ge) interfaceC0684Ce).d();
                }
                break;
            case 1:
                InterfaceC0684Ce interfaceC0684Ce2 = textureViewSurfaceTextureListenerC0669Be.f12398V;
                if (interfaceC0684Ce2 != null) {
                    C0744Ge c0744Ge = (C0744Ge) interfaceC0684Ce2;
                    RunnableC0729Fe runnableC0729Fe = c0744Ge.f13573K;
                    runnableC0729Fe.f13381H = false;
                    p113o3.J j8 = p113o3.O.f27924l;
                    j8.removeCallbacks(runnableC0729Fe);
                    j8.postDelayed(runnableC0729Fe, 250L);
                    j8.post(new RunnableC0714Ee(c0744Ge, 1));
                }
                break;
            case 2:
                InterfaceC0684Ce interfaceC0684Ce3 = textureViewSurfaceTextureListenerC0669Be.f12398V;
                if (interfaceC0684Ce3 != null) {
                    ((C0744Ge) interfaceC0684Ce3).e();
                    ((C0744Ge) textureViewSurfaceTextureListenerC0669Be.f12398V).i();
                }
                break;
            case 3:
                InterfaceC0684Ce interfaceC0684Ce4 = textureViewSurfaceTextureListenerC0669Be.f12398V;
                if (interfaceC0684Ce4 != null) {
                    if (!textureViewSurfaceTextureListenerC0669Be.f12399W) {
                        ((C0744Ge) interfaceC0684Ce4).h();
                        textureViewSurfaceTextureListenerC0669Be.f12399W = true;
                    }
                    ((C0744Ge) textureViewSurfaceTextureListenerC0669Be.f12398V).f();
                }
                break;
            default:
                InterfaceC0684Ce interfaceC0684Ce5 = textureViewSurfaceTextureListenerC0669Be.f12398V;
                if (interfaceC0684Ce5 != null) {
                    ((C0744Ge) interfaceC0684Ce5).e();
                }
                break;
        }
    }
}
