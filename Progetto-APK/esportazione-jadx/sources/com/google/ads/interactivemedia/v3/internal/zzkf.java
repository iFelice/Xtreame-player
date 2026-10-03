package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzkf extends zzkx {
    private static volatile Long zzh;
    private static final Object zzi = new Object();

    public zzkf(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "Yg7XTmV44rTPXCawjL+LLnad7Fgn9Aqg1oEqF/5ILJmBvjYFNR2q4oPr2MLzmzFr", "OmskNefI5KGTHj+9JnPSsNTlAsLQMDTHxEai8PMBc7Y=", zzanVar, i8, 22);
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
            this.zzd.zzy(zzh.longValue());
        }
    }
}
