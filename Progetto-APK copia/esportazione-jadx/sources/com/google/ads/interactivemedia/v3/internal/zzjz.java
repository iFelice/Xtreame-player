package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzjz extends zzkx {
    private static volatile Long zzh;
    private static final Object zzi = new Object();

    public zzjz(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "cjSsFcxVax6EwbsuZafYPPxAHkUT7a2SIb/oCbet6iQURCCVL9GhJgHBmqsITnDG", "2GoTKU7iwzLx50MI3wGMB3wuOh4ehkqUJCToqX/EZgk=", zzanVar, i8, 44);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        if (zzh == null) {
            synchronized (zzi) {
                try {
                    if (zzh == null) {
                        zzh = (Long) this.zze.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.zzd) {
            this.zzd.zzo(zzh.longValue());
        }
    }
}
