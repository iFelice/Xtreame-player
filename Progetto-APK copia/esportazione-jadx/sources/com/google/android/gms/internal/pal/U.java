package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class U implements InterfaceC2677b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC2677b0[] f23663a;

    public U(InterfaceC2677b0... interfaceC2677b0Arr) {
        this.f23663a = interfaceC2677b0Arr;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2677b0
    public final InterfaceC2669a0 zzb(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            InterfaceC2677b0 interfaceC2677b0 = this.f23663a[i8];
            if (interfaceC2677b0.zzc(cls)) {
                return interfaceC2677b0.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2677b0
    public final boolean zzc(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            if (this.f23663a[i8].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
