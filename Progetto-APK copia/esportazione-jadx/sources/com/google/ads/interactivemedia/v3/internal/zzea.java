package com.google.ads.interactivemedia.v3.internal;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzea extends zzeb {
    protected final HashSet zza;
    protected final JSONObject zzb;
    protected final long zzc;

    public zzea(zzdt zzdtVar, HashSet hashSet, JSONObject jSONObject, long j8) {
        super(zzdtVar);
        this.zza = new HashSet(hashSet);
        this.zzb = jSONObject;
        this.zzc = j8;
    }
}
