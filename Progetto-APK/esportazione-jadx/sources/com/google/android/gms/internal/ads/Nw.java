package com.google.android.gms.internal.ads;

import android.content.Context;
import p090l3.C3117z0;

/* JADX INFO: loaded from: classes.dex */
public final class Nw implements InterfaceC0735Fk, InterfaceC2305yj, InterfaceC0765Hk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Tw f15103G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Ow f15104H;

    public Nw(Context context, Tw tw) {
        this.f15103G = tw;
        this.f15104H = U4.a.h(context, 13);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2305yj
    public final void d(C3117z0 c3117z0) {
        if (((Boolean) AbstractC1656m8.f19914d.l()).booleanValue()) {
            String string = c3117z0.i().toString();
            Ow ow = this.f15104H;
            ow.i(string);
            ow.e(false);
            this.f15103G.a(ow);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0765Hk
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0765Hk
    public final void zzb() {
        if (((Boolean) AbstractC1656m8.f19914d.l()).booleanValue()) {
            Ow ow = this.f15104H;
            ow.e(true);
            this.f15103G.a(ow);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0735Fk
    public final void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0735Fk
    public final void zzl() {
        if (((Boolean) AbstractC1656m8.f19914d.l()).booleanValue()) {
            this.f15104H.zzi();
        }
    }
}
