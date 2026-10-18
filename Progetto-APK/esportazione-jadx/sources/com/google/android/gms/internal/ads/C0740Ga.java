package com.google.android.gms.internal.ads;

import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ga, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0740Ga implements InterfaceC2144ve, InterfaceC2092ue {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13558G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0725Fa f13559H;

    public /* synthetic */ C0740Ga(C0725Fa c0725Fa, int i8) {
        this.f13558G = i8;
        this.f13559H = c0725Fa;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2092ue
    public final void zza() {
        int i8 = this.f13558G;
        C0725Fa c0725Fa = this.f13559H;
        switch (i8) {
            case 2:
                c0725Fa.f13357d.v();
                break;
            default:
                p113o3.I.k("Rejecting reference for JS Engine.");
                if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15785a7)).booleanValue()) {
                    c0725Fa.p();
                } else {
                    c0725Fa.q("SdkJavascriptFactory.createNewReference.FailureCallback", new IllegalStateException("Unable to create JS engine reference."));
                }
                break;
        }
    }

    public /* synthetic */ C0740Ga(C0725Fa c0725Fa, int i8, int i9) {
        this.f13558G = i8;
        this.f13559H = c0725Fa;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2144ve, com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        int i8 = this.f13558G;
        C0725Fa c0725Fa = this.f13559H;
        switch (i8) {
            case 0:
                C2244xa c2244xa = (C2244xa) obj;
                p113o3.I.k("Getting a new session for JS Engine.");
                c2244xa.getClass();
                ((C2040te) c0725Fa.f24905a).b(new C0830Ma(c2244xa));
                break;
            default:
                p113o3.I.k("Releasing engine reference.");
                c0725Fa.f13357d.v();
                break;
        }
    }
}
