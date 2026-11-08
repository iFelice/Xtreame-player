package com.google.ads.interactivemedia.pal;

import com.google.android.gms.internal.pal.A0;
import com.google.protobuf.U2;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
final class zzj extends zzw {
    private final A0 zza;
    private final A0 zzb;
    private final A0 zzc;
    private final A0 zzd;
    private final A0 zze;
    private final int zzf;

    public /* synthetic */ zzj(A0 a8, A0 a9, A0 a10, A0 a11, A0 a12, int i8, zzi zziVar) {
        this.zza = a8;
        this.zzb = a9;
        this.zzc = a10;
        this.zzd = a11;
        this.zze = a12;
        this.zzf = i8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzw) {
            zzw zzwVar = (zzw) obj;
            if (this.zza.equals(zzwVar.zzc()) && this.zzb.equals(zzwVar.zzd()) && this.zzc.equals(zzwVar.zzb()) && this.zzd.equals(zzwVar.zzf()) && this.zze.equals(zzwVar.zze()) && this.zzf == zzwVar.zza()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode()) * 1000003) ^ this.zzc.hashCode()) * 1000003) ^ this.zzd.hashCode()) * 1000003) ^ this.zze.hashCode()) * 1000003) ^ this.zzf;
    }

    public final String toString() {
        String string = this.zza.toString();
        String string2 = this.zzb.toString();
        String string3 = this.zzc.toString();
        String string4 = this.zzd.toString();
        String string5 = this.zze.toString();
        int i8 = this.zzf;
        StringBuilder sbQ = U2.q("NonceTimingData{nonceLoaderInitTime=", string, ", nonceRequestTime=", string2, ", nonceLoadedTime=");
        a.h(sbQ, string3, ", resourceFetchStartTime=", string4, ", resourceFetchEndTime=");
        sbQ.append(string5);
        sbQ.append(", nonceLength=");
        sbQ.append(i8);
        sbQ.append("}");
        return sbQ.toString();
    }

    @Override // com.google.ads.interactivemedia.pal.zzw
    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.ads.interactivemedia.pal.zzw
    public final A0 zzb() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.pal.zzw
    public final A0 zzc() {
        return this.zza;
    }

    @Override // com.google.ads.interactivemedia.pal.zzw
    public final A0 zzd() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.pal.zzw
    public final A0 zze() {
        return this.zze;
    }

    @Override // com.google.ads.interactivemedia.pal.zzw
    public final A0 zzf() {
        return this.zzd;
    }
}
