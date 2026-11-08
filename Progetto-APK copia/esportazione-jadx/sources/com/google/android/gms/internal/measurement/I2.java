package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class I2 implements O2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final O2[] f22940a;

    public I2(O2... o2Arr) {
        this.f22940a = o2Arr;
    }

    @Override // com.google.android.gms.internal.measurement.O2
    public final N2 zzb(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            O2 o4 = this.f22940a[i8];
            if (o4.zzc(cls)) {
                return o4.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.O2
    public final boolean zzc(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            if (this.f22940a[i8].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
