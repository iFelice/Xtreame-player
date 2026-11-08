package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2391i0 implements InterfaceC2401n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC2401n0[] f22332a;

    public C2391i0(InterfaceC2401n0... interfaceC2401n0Arr) {
        this.f22332a = interfaceC2401n0Arr;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2401n0
    public final InterfaceC2399m0 zzb(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            InterfaceC2401n0 interfaceC2401n0 = this.f22332a[i8];
            if (interfaceC2401n0.zzc(cls)) {
                return interfaceC2401n0.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2401n0
    public final boolean zzc(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            if (this.f22332a[i8].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
