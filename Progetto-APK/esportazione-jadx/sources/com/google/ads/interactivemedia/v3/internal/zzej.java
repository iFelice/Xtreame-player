package com.google.ads.interactivemedia.v3.internal;

import J3.d;
import K3.AbstractC0245s;
import K3.InterfaceC0243p;
import K3.r;
import android.os.Bundle;
import com.google.android.gms.internal.ads.Cw;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import p052g4.i;

/* JADX INFO: loaded from: classes.dex */
public final class zzej {
    private final zznf zza;
    private final zzfd zzb;
    private final int zzc;

    public zzej(zzei zzeiVar) {
        this.zza = new zznm(zzeiVar.zza);
        this.zzb = zzeiVar.zzc;
        this.zzc = zzeiVar.zzb;
    }

    public final String zza(com.google.ads.interactivemedia.v3.impl.zzau zzauVar, String str) {
        if (this.zzc <= 0) {
            zzfk.zzc("AdsIdentityTokenLoader: invalid parameter for gksTimeoutMs");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            final Bundle bundle = new Bundle();
            if (zzauVar != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("x-afma-token-requester-type", zzauVar.toString());
                bundle.putBundle("extra_headers", bundle2);
            }
            zznf zznfVar = this.zza;
            r rVarA = AbstractC0245s.a();
            rVarA.f4569b = false;
            rVarA.f4571d = new d[]{zzpo.zza};
            final zznm zznmVar = (zznm) zznfVar;
            rVarA.f4570c = new InterfaceC0243p() { // from class: com.google.ads.interactivemedia.v3.internal.zzni
                @Override // K3.InterfaceC0243p
                public final void accept(Object obj, Object obj2) {
                    ((zzna) ((zznn) obj).getService()).zzf(bundle, new zznk(zznmVar, (i) obj2));
                }
            };
            return (String) Cw.b(((zznm) zznfVar).doRead(rVarA.a()), this.zzc, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e8) {
            e = e8;
            this.zzb.zzg(com.google.ads.interactivemedia.v3.impl.data.zzbp.ADS_IDENTITY_TOKEN_LOADER, com.google.ads.interactivemedia.v3.impl.data.zzbq.GET_ADSIDENTITY_TOKEN, e);
            this.zzb.zzc(str).zzk(zzfd.zza(jCurrentTimeMillis, System.currentTimeMillis()));
            return HttpUrl.FRAGMENT_ENCODE_SET;
        } catch (ExecutionException e9) {
            e = e9;
            this.zzb.zzg(com.google.ads.interactivemedia.v3.impl.data.zzbp.ADS_IDENTITY_TOKEN_LOADER, com.google.ads.interactivemedia.v3.impl.data.zzbq.GET_ADSIDENTITY_TOKEN, e);
            this.zzb.zzc(str).zzk(zzfd.zza(jCurrentTimeMillis, System.currentTimeMillis()));
            return HttpUrl.FRAGMENT_ENCODE_SET;
        } catch (TimeoutException e10) {
            e = e10;
            this.zzb.zzg(com.google.ads.interactivemedia.v3.impl.data.zzbp.ADS_IDENTITY_TOKEN_LOADER, com.google.ads.interactivemedia.v3.impl.data.zzbq.GET_ADSIDENTITY_TOKEN, e);
            this.zzb.zzc(str).zzk(zzfd.zza(jCurrentTimeMillis, System.currentTimeMillis()));
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }
}
