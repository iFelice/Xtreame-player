package com.google.ads.interactivemedia.v3.internal;

import R3.b;
import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzlk extends zzln {
    private final zzia zza;
    private final zzii zzb;

    public zzlk(Context context, Executor executor, zzm zzmVar) {
        zzie zzieVar = new zzie(context, executor, zzmVar);
        this.zza = zzieVar;
        this.zzb = new zzii(zzieVar);
    }

    @Deprecated
    private final R3.a zzt(R3.a aVar, R3.a aVar2, boolean z7) {
        try {
            Uri uri = (Uri) b.v0(aVar);
            Context context = (Context) b.v0(aVar2);
            return new b(z7 ? this.zzb.zzb(uri, context) : this.zzb.zza(uri, context, null, null));
        } catch (zzij unused) {
            return null;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final int zzb() {
        zzia zziaVar = this.zza;
        if (!(zziaVar instanceof zzie)) {
            return -1;
        }
        zzia zziaVarZza = ((zzie) zziaVar).zza();
        if (zziaVarZza instanceof zzih) {
            return 1;
        }
        return zziaVarZza instanceof zzhx ? 2 : -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final R3.a zzc(R3.a aVar, R3.a aVar2) {
        return zzt(aVar, aVar2, false);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final R3.a zzd(R3.a aVar, R3.a aVar2) {
        return zzt(aVar, aVar2, true);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final String zze(R3.a aVar, String str) {
        return ((zzie) this.zza).zze((Context) b.v0(aVar), str, null, null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final String zzf(R3.a aVar) {
        return zzg(aVar, null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final String zzg(R3.a aVar, byte[] bArr) {
        return this.zza.zzg((Context) b.v0(aVar), bArr);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final String zzh(R3.a aVar, R3.a aVar2, R3.a aVar3, R3.a aVar4) {
        return this.zza.zze((Context) b.v0(aVar), (String) b.v0(aVar2), (View) b.v0(aVar3), (Activity) b.v0(aVar4));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final String zzi(R3.a aVar) {
        return ((zzie) this.zza).zzg((Context) b.v0(aVar), null);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final String zzj() {
        return "ms";
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final String zzk(R3.a aVar, R3.a aVar2, R3.a aVar3) {
        return this.zza.zzh((Context) b.v0(aVar), (View) b.v0(aVar2), (Activity) b.v0(aVar3));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final void zzl(R3.a aVar) {
        this.zzb.zzc((MotionEvent) b.v0(aVar));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final void zzm(R3.a aVar) {
        this.zza.zzn((View) b.v0(aVar));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final void zzn(String str, String str2) {
        this.zzb.zzd(str, str2);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final void zzo(String str) {
        this.zzb.zze(str);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final boolean zzp(R3.a aVar) {
        return this.zzb.zzg((Uri) b.v0(aVar));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    @Deprecated
    public final boolean zzq(R3.a aVar) {
        return this.zzb.zzf((Uri) b.v0(aVar));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final boolean zzr() {
        return this.zza.zzq();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlo
    public final boolean zzs() {
        return this.zza.zzs();
    }
}
