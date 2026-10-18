package com.google.ads.interactivemedia.v3.internal;

import android.provider.Settings;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class zzjv extends zzkx {
    public zzjv(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9) {
        super(zzjjVar, "IxJDzw7riPGIi+6mP3gv4cSOSWfR5YtNTbyqZn2Ht5HKdNQC0tKhOeKDSDHSp4KX", "z9spx3v9+kPNu6he2ixuUPrYedAM+Y/M/eZi1fM7bqI=", zzanVar, i8, 49);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() throws InvocationTargetException {
        this.zzd.zzaa(3);
        try {
            int i8 = 1;
            boolean zBooleanValue = ((Boolean) this.zze.invoke(null, this.zza.zzb())).booleanValue();
            zzan zzanVar = this.zzd;
            if (true == zBooleanValue) {
                i8 = 2;
            }
            zzanVar.zzaa(i8);
        } catch (InvocationTargetException e8) {
            if (!(e8.getTargetException() instanceof Settings.SettingNotFoundException)) {
                throw e8;
            }
        }
    }
}
