package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2449g2 implements C2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2449g2 f22737a = new C2449g2();

    @Override // com.google.android.gms.internal.cast.C2
    public final B2 zzb(Class cls) {
        if (!AbstractC2457i2.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (B2) AbstractC2457i2.k(cls.asSubclass(AbstractC2457i2.class)).h(3, null);
        } catch (Exception e8) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e8);
        }
    }

    @Override // com.google.android.gms.internal.cast.C2
    public final boolean zzc(Class cls) {
        return AbstractC2457i2.class.isAssignableFrom(cls);
    }
}
