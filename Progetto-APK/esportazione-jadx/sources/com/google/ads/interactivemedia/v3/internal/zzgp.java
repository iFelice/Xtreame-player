package com.google.ads.interactivemedia.v3.internal;

import N.AbstractC0257f;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzgp implements PackageManager.OnChecksumsReadyListener {
    final zzvd zza = zzvd.zzs();

    @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
    public final void onChecksumsReady(List list) {
        if (list == null) {
            this.zza.zzc(HttpUrl.FRAGMENT_ENCODE_SET);
            return;
        }
        try {
            int size = list.size();
            for (int i8 = 0; i8 < size; i8++) {
                ApkChecksum apkChecksumD = AbstractC0257f.d(list.get(i8));
                if (apkChecksumD.getType() == 8) {
                    zzvd zzvdVar = this.zza;
                    zzsz zzszVarZzf = zzsz.zzi().zzf();
                    byte[] value = apkChecksumD.getValue();
                    zzvdVar.zzc(zzszVarZzf.zzj(value, 0, value.length));
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.zza.zzc(HttpUrl.FRAGMENT_ENCODE_SET);
    }
}
