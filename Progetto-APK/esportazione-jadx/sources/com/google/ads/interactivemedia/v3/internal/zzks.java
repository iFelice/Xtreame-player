package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzks extends zzkx {
    private static volatile Long zzh;
    private static final Object zzi = new Object();

    public zzks(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "tcR33IRFUbyN40xqCgABnI/9LsQindHOMS174YFQDeQf7OxZ+1/XT6alWsupn6gv", "9MshwtT+S3va52FSe6SYgVUb3QNeeYys8AoyRUVWlrg=", zzanVar, i8, 33);
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
            this.zzd.zzV(zzh.longValue());
        }
    }
}
