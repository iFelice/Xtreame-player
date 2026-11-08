package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
final class zztv extends zzts {
    private zztv() {
        throw null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzts
    public final int zza(zztw zztwVar) {
        int i8;
        synchronized (zztwVar) {
            i8 = zztwVar.remaining - 1;
            zztwVar.remaining = i8;
        }
        return i8;
    }

    public /* synthetic */ zztv(zztu zztuVar) {
        super(null);
    }
}
