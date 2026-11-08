package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ue, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0947Ue implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16854G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ TextureViewSurfaceTextureListenerC0975We f16855H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f16856I;

    public /* synthetic */ RunnableC0947Ue(TextureViewSurfaceTextureListenerC0975We textureViewSurfaceTextureListenerC0975We, String str, int i8) {
        this.f16854G = i8;
        this.f16855H = textureViewSurfaceTextureListenerC0975We;
        this.f16856I = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f16854G;
        String str = this.f16856I;
        TextureViewSurfaceTextureListenerC0975We textureViewSurfaceTextureListenerC0975We = this.f16855H;
        switch (i8) {
            case 0:
                InterfaceC0684Ce interfaceC0684Ce = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce != null) {
                    ((C0744Ge) interfaceC0684Ce).c("exception", "what", "ExoPlayerAdapter exception", "extra", str);
                }
                break;
            default:
                InterfaceC0684Ce interfaceC0684Ce2 = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce2 != null) {
                    ((C0744Ge) interfaceC0684Ce2).c("error", "what", "ExoPlayerAdapter error", "extra", str);
                }
                break;
        }
    }
}
