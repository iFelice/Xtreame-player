package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2301yf implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22037G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2353zf f22038H;

    public /* synthetic */ RunnableC2301yf(C2353zf c2353zf, int i8) {
        this.f22037G = i8;
        this.f22038H = c2353zf;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f22037G;
        C2353zf c2353zf = this.f22038H;
        switch (i8) {
            case 0:
                InterfaceC0684Ce interfaceC0684Ce = c2353zf.f22176K;
                if (interfaceC0684Ce != null) {
                    ((C0744Ge) interfaceC0684Ce).g();
                }
                break;
            case 1:
                InterfaceC0684Ce interfaceC0684Ce2 = c2353zf.f22176K;
                if (interfaceC0684Ce2 != null) {
                    if (!c2353zf.f22177L) {
                        ((C0744Ge) interfaceC0684Ce2).h();
                        c2353zf.f22177L = true;
                    }
                    ((C0744Ge) c2353zf.f22176K).f();
                }
                break;
            default:
                InterfaceC0684Ce interfaceC0684Ce3 = c2353zf.f22176K;
                if (interfaceC0684Ce3 != null) {
                    ((C0744Ge) interfaceC0684Ce3).e();
                }
                break;
        }
    }
}
