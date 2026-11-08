package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2355zh implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22180G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0715Ef f22181H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ JSONObject f22182I;

    public /* synthetic */ RunnableC2355zh(InterfaceC0715Ef interfaceC0715Ef, JSONObject jSONObject, int i8) {
        this.f22180G = i8;
        this.f22181H = interfaceC0715Ef;
        this.f22182I = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f22180G;
        InterfaceC0715Ef interfaceC0715Ef = this.f22181H;
        JSONObject jSONObject = this.f22182I;
        switch (i8) {
            case 0:
                interfaceC0715Ef.g(jSONObject, "AFMA_updateActiveView");
                break;
            default:
                int i9 = C0721El.f13179G;
                interfaceC0715Ef.b(jSONObject, "onVideoEvent");
                break;
        }
    }
}
