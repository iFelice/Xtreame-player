package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class L9 implements InterfaceC1195dC, InterfaceC1214dg {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0715Ef f14478G;

    public /* synthetic */ L9(InterfaceC0715Ef interfaceC0715Ef) {
        this.f14478G = interfaceC0715Ef;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1214dg
    /* JADX INFO: renamed from: zza */
    public final void mo7zza() {
        this.f14478G.P();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final /* bridge */ /* synthetic */ void mo3zzb(Object obj) {
        InterfaceC0715Ef interfaceC0715Ef = this.f14478G;
        new p113o3.y(interfaceC0715Ef.getContext(), interfaceC0715Ef.zzn().f28196G, (String) obj).b();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        p083k3.l.f25980A.f25987g.i("DefaultGmsgHandlers.attributionReportingManager", th);
    }
}
