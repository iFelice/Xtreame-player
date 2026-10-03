package com.google.ads.interactivemedia.v3.internal;

import com.google.android.gms.common.api.d;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzrz {
    public static Object zza(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    public static HashMap zzb(int i8) {
        int iCeil;
        if (i8 < 3) {
            zzqt.zza(i8, "expectedSize");
            iCeil = i8 + 1;
        } else {
            iCeil = i8 < 1073741824 ? (int) Math.ceil(((double) i8) / 0.75d) : d.API_PRIORITY_OTHER;
        }
        return new HashMap(iCeil);
    }
}
