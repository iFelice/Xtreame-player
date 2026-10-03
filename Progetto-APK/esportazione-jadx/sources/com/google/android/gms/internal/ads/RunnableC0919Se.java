package com.google.android.gms.internal.ads;

import java.io.IOException;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Se, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0919Se implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16442G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ TextureViewSurfaceTextureListenerC0975We f16443H;

    public /* synthetic */ RunnableC0919Se(TextureViewSurfaceTextureListenerC0975We textureViewSurfaceTextureListenerC0975We, int i8) {
        this.f16442G = i8;
        this.f16443H = textureViewSurfaceTextureListenerC0975We;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f16442G;
        TextureViewSurfaceTextureListenerC0975We textureViewSurfaceTextureListenerC0975We = this.f16443H;
        switch (i8) {
            case 0:
                InterfaceC0684Ce interfaceC0684Ce = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce != null) {
                    ((C0744Ge) interfaceC0684Ce).h();
                }
                break;
            case 1:
                InterfaceC0684Ce interfaceC0684Ce2 = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce2 != null) {
                    ((C0744Ge) interfaceC0684Ce2).f();
                }
                break;
            case 2:
                C0905Re c0905Re = textureViewSurfaceTextureListenerC0975We.f12836H;
                float f8 = c0905Re.f16273c ? c0905Re.f16275e ? 0.0f : c0905Re.f16276f : 0.0f;
                C2145vf c2145vf = textureViewSurfaceTextureListenerC0975We.f17268N;
                if (c2145vf == null) {
                    p120p3.h.g("Trying to set volume before player is initialized.");
                } else {
                    try {
                        C1049aL c1049aL = c2145vf.f21535M;
                        if (c1049aL != null) {
                            c1049aL.j(f8);
                        }
                    } catch (IOException e8) {
                        p120p3.h.h(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                        return;
                    }
                }
                break;
            case 3:
                InterfaceC0684Ce interfaceC0684Ce3 = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce3 != null) {
                    ((C0744Ge) interfaceC0684Ce3).i();
                }
                break;
            case 4:
                InterfaceC0684Ce interfaceC0684Ce4 = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce4 != null) {
                    ((C0744Ge) interfaceC0684Ce4).e();
                }
                break;
            case 5:
                InterfaceC0684Ce interfaceC0684Ce5 = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce5 != null) {
                    C0744Ge c0744Ge = (C0744Ge) interfaceC0684Ce5;
                    RunnableC0729Fe runnableC0729Fe = c0744Ge.f13573K;
                    runnableC0729Fe.f13381H = false;
                    p113o3.J j8 = p113o3.O.f27924l;
                    j8.removeCallbacks(runnableC0729Fe);
                    j8.postDelayed(runnableC0729Fe, 250L);
                    j8.post(new RunnableC0714Ee(c0744Ge, 1));
                }
                break;
            case 6:
                InterfaceC0684Ce interfaceC0684Ce6 = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce6 != null) {
                    ((C0744Ge) interfaceC0684Ce6).d();
                }
                break;
            default:
                InterfaceC0684Ce interfaceC0684Ce7 = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce7 != null) {
                    ((C0744Ge) interfaceC0684Ce7).g();
                }
                break;
        }
    }
}
