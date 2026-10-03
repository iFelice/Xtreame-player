package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Rh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0908Rh implements InterfaceC1373gk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16324G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f16325H;

    public /* synthetic */ C0908Rh(Object obj, int i8) {
        this.f16324G = i8;
        this.f16325H = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1373gk
    public final void zza() {
        p105n3.k kVarB;
        int i8 = this.f16324G;
        Object obj = this.f16325H;
        switch (i8) {
            case 0:
                ((C0966Vj) obj).zza();
                break;
            default:
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                if (interfaceC0715Ef != null && (kVarB = interfaceC0715Ef.B()) != null) {
                    kVarB.zzb();
                    break;
                }
                break;
        }
    }
}
