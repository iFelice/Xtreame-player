package com.google.ads.interactivemedia.pal;

import android.net.Uri;
import com.google.android.gms.internal.pal.R2;
import com.google.android.gms.internal.pal.X2;
import com.google.android.gms.internal.pal.Y2;
import com.google.android.gms.internal.pal.Z2;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzs {
    private final String zza;
    private final String zzb;
    private final String zzc;

    public zzs(zzq zzqVar) {
        this.zza = zzqVar.zzb();
        this.zzb = zzqVar.zzc();
        this.zzc = zzqVar.zza();
    }

    public final void zza(String str, String str2, Map map) {
        R2 r7 = new R2();
        r7.b(map);
        r7.a(zzr.SDKV.zza(), this.zzb);
        r7.a(zzr.PALV.zza(), this.zza);
        r7.a(zzr.CORRELATOR.zza(), this.zzc);
        r7.a(zzr.EVENT_ID.zza(), str2);
        r7.a(zzr.LOGGER_ID.zza(), str);
        Z2 z2C = r7.c();
        Uri.Builder builderBuildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204").buildUpon();
        X2<String> x7 = z2C.f23653H;
        if (x7 == null) {
            X2 x8 = new X2(z2C, new Y2(z2C.f23716K, 0, z2C.f23717L));
            z2C.f23653H = x8;
            x7 = x8;
        }
        for (String str3 : x7) {
            builderBuildUpon.appendQueryParameter(str3, (String) z2C.get(str3));
        }
        new zzo(this, builderBuildUpon.build().toString()).start();
    }
}
