package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2206wo implements InterfaceC1195dC {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21747G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f21748H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ BinderC2258xo f21749I;

    public /* synthetic */ C2206wo(BinderC2258xo binderC2258xo, String str, int i8) {
        this.f21747G = i8;
        this.f21748H = str;
        this.f21749I = binderC2258xo;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        int i8 = this.f21747G;
        String str = this.f21748H;
        BinderC2258xo binderC2258xo = this.f21749I;
        switch (i8) {
            case 0:
                ((C1480io) obj).f19348S = true;
                binderC2258xo.f21930J.b(str);
                break;
            default:
                ((C1480io) obj).f19349T = true;
                binderC2258xo.f21930J.b(str);
                break;
        }
    }
}
