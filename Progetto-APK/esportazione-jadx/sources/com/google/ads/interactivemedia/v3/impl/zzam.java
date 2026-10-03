package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.internal.zzfc;
import com.google.ads.interactivemedia.v3.internal.zzgi;
import com.google.ads.interactivemedia.v3.internal.zzrz;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
final class zzam {
    private final zzaf zza;
    private final zzat zzb;
    private final ExecutorService zzc;
    private final zzbi zzd;
    private final String zze;
    private final zzgi zzf;
    private final float zzg;

    public zzam(Context context, ExecutorService executorService, String str, zzaf zzafVar, zzat zzatVar, zzgi zzgiVar, zzbi zzbiVar) {
        this.zzf = zzgiVar;
        this.zzc = executorService;
        this.zzb = zzatVar;
        this.zza = zzafVar;
        this.zzd = zzbiVar;
        this.zze = str;
        this.zzg = context.getResources().getDisplayMetrics().density;
    }

    private final void zzb() {
        this.zzb.zzc(new zzd(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INTERNAL_ERROR, "Unable to parse companion information.")));
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00e4  */
    public final void zza(com.google.ads.interactivemedia.v3.impl.data.zzbu zzbuVar) {
        Map<String, com.google.ads.interactivemedia.v3.impl.data.zzbe> map;
        View viewZza;
        com.google.ads.interactivemedia.v3.impl.data.zzbo zzboVar;
        if (zzbuVar == null || (map = zzbuVar.companions) == null) {
            zzb();
            return;
        }
        zzaf zzafVar = this.zza;
        Set<String> setKeySet = map.keySet();
        HashMap mapZzb = zzrz.zzb(setKeySet.size());
        for (String str : setKeySet) {
            CompanionAdSlot companionAdSlot = (CompanionAdSlot) zzafVar.zza().get(str);
            ViewGroup container = companionAdSlot != null ? companionAdSlot.getContainer() : null;
            if (container != null) {
                mapZzb.put(str, container);
            } else {
                zzb();
            }
        }
        for (String str2 : mapZzb.keySet()) {
            ViewGroup viewGroup = (ViewGroup) mapZzb.get(str2);
            com.google.ads.interactivemedia.v3.impl.data.zzbe zzbeVar = zzbuVar.companions.get(str2);
            CompanionAdSlot companionAdSlot2 = (CompanionAdSlot) this.zza.zza().get(str2);
            viewGroup.removeAllViews();
            zzal zzalVar = (zzal) companionAdSlot2;
            List listZza = zzalVar.zza();
            int iOrdinal = zzbeVar.type().ordinal();
            if (iOrdinal == 0) {
                viewZza = zzap.zza(viewGroup.getContext(), zzbeVar, listZza, this.zzf);
            } else if (iOrdinal == 1) {
                zzfc zzfcVar = new zzfc(this.zzc, this.zzg);
                Context context = viewGroup.getContext();
                zzbi zzbiVar = this.zzd;
                String str3 = this.zze;
                String strSrc = zzbeVar.src();
                String size = zzbeVar.size();
                if (size == null) {
                    zzboVar = null;
                } else {
                    String[] strArrSplit = size.split("x", -1);
                    zzboVar = strArrSplit.length != 2 ? new com.google.ads.interactivemedia.v3.impl.data.zzbo(0, 0) : new com.google.ads.interactivemedia.v3.impl.data.zzbo(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]));
                }
                viewZza = zzax.zza(context, zzbiVar, zzbeVar, zzfcVar.zzb(strSrc, zzboVar), str3, listZza, this.zzf);
            } else if (iOrdinal != 2) {
                viewZza = null;
            } else {
                viewZza = zzap.zza(viewGroup.getContext(), zzbeVar, listZza, this.zzf);
            }
            if (viewZza != null) {
                viewZza.setTag(this.zze);
                zzalVar.zzb(this.zze);
                viewGroup.addView(viewZza);
            }
        }
    }
}
