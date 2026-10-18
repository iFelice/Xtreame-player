package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class B implements InterfaceC2677b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final B f23453a = new B();

    @Override // com.google.android.gms.internal.pal.InterfaceC2677b0
    public final InterfaceC2669a0 zzb(Class cls) {
        if (!D.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (InterfaceC2669a0) D.i(cls.asSubclass(D.class)).l(3);
        } catch (Exception e8) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e8);
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2677b0
    public final boolean zzc(Class cls) {
        return D.class.isAssignableFrom(cls);
    }
}
