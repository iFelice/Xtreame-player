package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.internal.zzqf;
import com.google.ads.interactivemedia.v3.internal.zzrm;
import com.google.ads.interactivemedia.v3.internal.zzrp;
import com.google.protobuf.U2;
import p000a.r;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
final class zzad extends zzx {
    private final zzqf zza;
    private final String zzb;
    private final zzrm zzc;
    private final zzrp zzd;

    public zzad(zzqf zzqfVar, String str, zzrm zzrmVar, zzrp zzrpVar) {
        this.zza = zzqfVar;
        if (str == null) {
            throw new NullPointerException("Null spamMsParameter");
        }
        this.zzb = str;
        if (zzrmVar == null) {
            throw new NullPointerException("Null secureSignals");
        }
        this.zzc = zzrmVar;
        this.zzd = zzrpVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzx) {
            zzx zzxVar = (zzx) obj;
            if (this.zza.equals(zzxVar.zzb()) && this.zzb.equals(zzxVar.zze()) && this.zzc.equals(zzxVar.zzc()) && this.zzd.equals(zzxVar.zzd())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode()) * 1000003) ^ this.zzc.hashCode()) * 1000003) ^ this.zzd.hashCode();
    }

    public final String toString() {
        zzrp zzrpVar = this.zzd;
        zzrm zzrmVar = this.zzc;
        String string = this.zza.toString();
        String string2 = zzrmVar.toString();
        String string3 = zzrpVar.toString();
        StringBuilder sbP = U2.p("RequestSignals{identifierInfo=", string, ", spamMsParameter=");
        a.h(sbP, this.zzb, ", secureSignals=", string2, ", platformSignals=");
        return r.j(sbP, string3, "}");
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzx
    public final zzqf zzb() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzx
    public final zzrm zzc() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzx
    public final zzrp zzd() {
        return this.zzd;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzx
    public final String zze() {
        return this.zzb;
    }
}
