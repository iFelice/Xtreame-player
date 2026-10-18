package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Rf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0906Rf implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16277G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC0920Sf f16278H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f16279I;

    public /* synthetic */ RunnableC0906Rf(ViewTreeObserverOnGlobalLayoutListenerC0920Sf viewTreeObserverOnGlobalLayoutListenerC0920Sf, String str, int i8) {
        this.f16277G = i8;
        if (i8 != 1) {
            this.f16278H = viewTreeObserverOnGlobalLayoutListenerC0920Sf;
            this.f16279I = "about:blank";
        } else {
            this.f16278H = viewTreeObserverOnGlobalLayoutListenerC0920Sf;
            this.f16279I = str;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f16277G;
        ViewTreeObserverOnGlobalLayoutListenerC0920Sf viewTreeObserverOnGlobalLayoutListenerC0920Sf = this.f16278H;
        switch (i8) {
            case 0:
                viewTreeObserverOnGlobalLayoutListenerC0920Sf.O();
                break;
            default:
                viewTreeObserverOnGlobalLayoutListenerC0920Sf.M(this.f16279I);
                break;
        }
    }
}
