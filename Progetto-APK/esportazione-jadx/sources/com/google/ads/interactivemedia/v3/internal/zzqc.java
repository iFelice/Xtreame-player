package com.google.ads.interactivemedia.v3.internal;

import java.util.Arrays;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzqc {
    private final String zza;
    private final zzqa zzb;
    private zzqa zzc;

    public /* synthetic */ zzqc(String str, zzqb zzqbVar) {
        zzqa zzqaVar = new zzqa();
        this.zzb = zzqaVar;
        this.zzc = zzqaVar;
        str.getClass();
        this.zza = str;
    }

    private final zzqa zzc() {
        zzqa zzqaVar = new zzqa();
        this.zzc.zzc = zzqaVar;
        this.zzc = zzqaVar;
        return zzqaVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzqa zzqaVar = this.zzb.zzc;
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        while (zzqaVar != null) {
            Object obj = zzqaVar.zzb;
            sb.append(str);
            String str2 = zzqaVar.zza;
            if (str2 != null) {
                sb.append(str2);
                sb.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                String strDeepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
            }
            zzqaVar = zzqaVar.zzc;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzqc zza(String str, Object obj) {
        zzqa zzqaVarZzc = zzc();
        zzqaVarZzc.zzb = obj;
        zzqaVarZzc.zza = "consentKeyTypes";
        return this;
    }

    public final zzqc zzb(Object obj) {
        zzc().zzb = obj;
        return this;
    }
}
