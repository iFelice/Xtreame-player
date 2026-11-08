package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzkk extends zzkx {
    private static volatile String zzh;
    private static final Object zzi = new Object();

    public zzkk(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "cfPFolnFcyO2M4b7dfdBFR1LJKqZp4Fuk/UdR9bfuLBzuF+2QIdBkATGw9zmvT3l", "2ySKasqG9MJf+B86/j4Y0JFrwsiYz8yWF0K2o6c0cu0=", zzanVar, i8, 1);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        this.zzd.zzB("E");
        if (zzh == null) {
            synchronized (zzi) {
                try {
                    if (zzh == null) {
                        zzh = (String) this.zze.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.zzd) {
            this.zzd.zzB(zzh);
        }
    }
}
