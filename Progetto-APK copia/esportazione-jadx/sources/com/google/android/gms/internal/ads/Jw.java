package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Jw implements InterfaceC1942rk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14248G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Fw f14249H;

    public /* synthetic */ Jw(Fw fw, int i8) {
        this.f14248G = i8;
        this.f14249H = fw;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        int i8 = this.f14248G;
        Fw fw = this.f14249H;
        switch (i8) {
            case 0:
                ((Lw) obj).d((Iw) fw.f13439G, fw.f13440H);
                break;
            case 1:
                ((Lw) obj).e(fw.f13440H);
                break;
            default:
                ((Lw) obj).i((Iw) fw.f13439G, fw.f13440H);
                break;
        }
    }
}
