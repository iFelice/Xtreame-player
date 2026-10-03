package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Nm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0857Nm implements InterfaceC1195dC {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15082G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f15083H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ N9 f15084I;

    public /* synthetic */ C0857Nm(String str, N9 n9, int i8) {
        this.f15082G = i8;
        this.f15083H = str;
        this.f15084I = n9;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final /* bridge */ /* synthetic */ void mo3zzb(Object obj) {
        int i8 = this.f15082G;
        N9 n9 = this.f15084I;
        String str = this.f15083H;
        switch (i8) {
            case 0:
                ((InterfaceC0715Ef) obj).L0(str, n9);
                break;
            default:
                ((InterfaceC0715Ef) obj).D0(str, n9);
                break;
        }
    }
}
