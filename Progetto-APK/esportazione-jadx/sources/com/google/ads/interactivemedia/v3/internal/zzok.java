package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;
import com.google.android.gms.internal.ads.Cw;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p052g4.e;
import p052g4.h;
import p052g4.r;
import p075j3.b;

/* JADX INFO: loaded from: classes.dex */
public final class zzok {
    private final Context zza;
    private final Executor zzb;
    private final zznt zzc;
    private final zznv zzd;
    private final zzoj zze;
    private final zzoj zzf;
    private h zzg;
    private h zzh;

    public zzok(Context context, Executor executor, zznt zzntVar, zznv zznvVar, zzoh zzohVar, zzoi zzoiVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzntVar;
        this.zzd = zznvVar;
        this.zze = zzohVar;
        this.zzf = zzoiVar;
    }

    public static zzok zze(Context context, Executor executor, zznt zzntVar, zznv zznvVar) {
        final zzok zzokVar = new zzok(context, executor, zzntVar, zznvVar, new zzoh(), new zzoi());
        if (zzokVar.zzd.zzh()) {
            zzokVar.zzg = zzokVar.zzh(new Callable() { // from class: com.google.ads.interactivemedia.v3.internal.zzoe
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.zza.zzc();
                }
            });
        } else {
            zzokVar.zzg = Cw.k(zzokVar.zze.zza());
        }
        zzokVar.zzh = zzokVar.zzh(new Callable() { // from class: com.google.ads.interactivemedia.v3.internal.zzof
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzd();
            }
        });
        return zzokVar;
    }

    private static zzbp zzg(h hVar, zzbp zzbpVar) {
        return !hVar.h() ? zzbpVar : (zzbp) hVar.f();
    }

    private final h zzh(Callable callable) {
        r rVarC = Cw.c(callable, this.zzb);
        rVarC.b(this.zzb, new e() { // from class: com.google.ads.interactivemedia.v3.internal.zzog
            @Override // p052g4.e
            public final void onFailure(Exception exc) {
                this.zza.zzf(exc);
            }
        });
        return rVarC;
    }

    public final zzbp zza() {
        return zzg(this.zzg, this.zze.zza());
    }

    public final zzbp zzb() {
        return zzg(this.zzh, this.zzf.zza());
    }

    public final zzbp zzc() {
        zzan zzanVarZza = zzbp.zza();
        p075j3.a aVarA = b.a(this.zza);
        String strEncodeToString = aVarA.f25695a;
        if (strEncodeToString != null && strEncodeToString.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            UUID uuidFromString = UUID.fromString(strEncodeToString);
            byte[] bArr = new byte[16];
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
            byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
            strEncodeToString = Base64.encodeToString(bArr, 11);
        }
        if (strEncodeToString != null) {
            zzanVarZza.zzs(strEncodeToString);
            zzanVarZza.zzr(aVarA.f25696b);
            zzanVarZza.zzab(6);
        }
        return (zzbp) zzanVarZza.zzal();
    }

    public final /* synthetic */ zzbp zzd() throws PackageManager.NameNotFoundException {
        Context context = this.zza;
        return zzob.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    public final /* synthetic */ void zzf(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.zzc.zzc(2025, -1L, exc);
    }
}
