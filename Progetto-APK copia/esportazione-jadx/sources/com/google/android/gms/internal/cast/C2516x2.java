package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.x2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2516x2 implements C2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2[] f22821a;

    public C2516x2(C2... c2Arr) {
        this.f22821a = c2Arr;
    }

    @Override // com.google.android.gms.internal.cast.C2
    public final B2 zzb(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            C2 c8 = this.f22821a[i8];
            if (c8.zzc(cls)) {
                return c8.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.cast.C2
    public final boolean zzc(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            if (this.f22821a[i8].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
