package com.google.ads.interactivemedia.v3.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzes {
    static final zzrp zza = zzrp.zzf("IABTCF_AddtlConsent", "String", "IABTCF_gdprApplies", "Number", "IABTCF_TCString", "String", "IABUSPrivacy_String", "String", "IABGPP_HDR_GppString", "String", "IABGPP_GppSID", "String");
    private final boolean zzb;
    private final zzrp zzc;

    private zzes(zzrp zzrpVar, boolean z7) {
        this.zzc = zzrpVar;
        this.zzb = z7;
    }

    public static zzes zza(com.google.ads.interactivemedia.v3.impl.data.zzbu zzbuVar) {
        Map<String, String> map;
        zzrp zzrpVarZzc = zza;
        com.google.ads.interactivemedia.v3.impl.data.zzbs zzbsVar = zzbuVar.consentSettingsConfig;
        if (zzbsVar != null && (map = zzbsVar.consentKeyTypes) != null) {
            zzrpVarZzc = zzrp.zzc(map);
        }
        return new zzes(zzrpVarZzc, !zzbuVar.disableJsIdLessEvaluation);
    }
}
