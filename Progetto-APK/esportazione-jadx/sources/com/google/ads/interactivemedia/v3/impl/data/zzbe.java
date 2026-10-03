package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzps;
import com.google.protobuf.U2;
import p000a.r;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzr.class)
public abstract class zzbe {
    private String companionId;

    private static zzbe create(String str, String str2, String str3, zzbd zzbdVar) {
        return new zzr(str, str2, str3, zzbdVar);
    }

    public abstract String clickThroughUrl();

    public String companionId() {
        return this.companionId;
    }

    public abstract String size();

    public abstract String src();

    public final String toString() {
        String strCompanionId = companionId();
        String size = size();
        String strSrc = src();
        String strClickThroughUrl = clickThroughUrl();
        String strValueOf = String.valueOf(type());
        StringBuilder sbQ = U2.q("CompanionData [companionId=", strCompanionId, ", size=", size, ", src=");
        a.h(sbQ, strSrc, ", clickThroughUrl=", strClickThroughUrl, ", type=");
        return r.j(sbQ, strValueOf, "]");
    }

    public abstract zzbd type();

    public static zzbe create(String str, String str2, String str3, String str4, zzbd zzbdVar) {
        zzbe zzbeVarCreate = create(str2, str3, str4, zzbdVar);
        zzbeVarCreate.companionId = str;
        return zzbeVarCreate;
    }
}
