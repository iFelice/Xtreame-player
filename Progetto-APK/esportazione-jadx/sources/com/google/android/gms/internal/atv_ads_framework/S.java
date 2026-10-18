package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: loaded from: classes.dex */
public final class S implements InterfaceC2401n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final S f22290a = new S();

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2401n0
    public final InterfaceC2399m0 zzb(Class cls) {
        if (!U.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (InterfaceC2399m0) U.g(cls.asSubclass(U.class)).d(3);
        } catch (Exception e8) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e8);
        }
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2401n0
    public final boolean zzc(Class cls) {
        return U.class.isAssignableFrom(cls);
    }
}
