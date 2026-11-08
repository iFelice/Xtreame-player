package com.google.android.gms.internal.ads;

import D0.C0129t;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ua, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0943Ua implements InterfaceC2144ve, InterfaceC2092ue, InterfaceC1195dC {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C2040te f16843G;

    public /* synthetic */ C0943Ua(C2040te c2040te) {
        this.f16843G = c2040te;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2092ue
    public final void zza() {
        this.f16843G.c(new C0129t("Cannot get Javascript Engine"));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
        if (interfaceC0715Ef != null) {
            interfaceC0715Ef.L0("/video", new E9(new C1388gz(this, 9), 6));
            interfaceC0715Ef.P();
        } else {
            this.f16843G.c(new C1898qr(1, "Missing webview from video view future."));
        }
    }

    public C0943Ua(C2040te c2040te, int i8) {
        this.f16843G = c2040te;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2144ve, com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        this.f16843G.b((InterfaceC0815La) obj);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        p120p3.h.d("Failed to load media data due to video view load failure.");
        this.f16843G.c(th);
    }
}
