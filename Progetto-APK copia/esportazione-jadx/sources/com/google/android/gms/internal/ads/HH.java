package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class HH implements MH {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final MH[] f13737G;

    public HH(MH... mhArr) {
        this.f13737G = mhArr;
    }

    @Override // com.google.android.gms.internal.ads.MH
    public final LH zzb(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            MH mh = this.f13737G[i8];
            if (mh.zzc(cls)) {
                return mh.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.MH
    public final boolean zzc(Class cls) {
        for (int i8 = 0; i8 < 2; i8++) {
            if (this.f13737G[i8].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
