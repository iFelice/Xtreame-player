package com.google.ads.interactivemedia.v3.internal;

import N.AbstractC0257f;
import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class zzjx extends zzkx {
    private static final zzky zzh = new zzky();
    private final zzai zzi;
    private final Context zzj;
    private final zzgq zzk;

    public zzjx(zzjj zzjjVar, String str, String str2, zzan zzanVar, int i8, int i9, Context context, zzy zzyVar, zzai zzaiVar, zzgq zzgqVar) {
        super(zzjjVar, "tJmUdMX6gqvtYlGKWrIbrrzb8XPfGATZoLaUzDKGLsbQDYlTX2kjiVwbkwxCBzrp", "/TGj8+Sp8IdKBz9y8bC3H0KHpnJRg9DGCA85aF22WXc=", zzanVar, i8, 27);
        this.zzj = context;
        this.zzi = zzaiVar;
        this.zzk = zzgqVar;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0097  */
    /* JADX WARN: Multi-variable type inference failed */
    private final zzgm zzc() {
        String strZzg;
        int iIntValue = ((Boolean) zzls.zzc().zza(zzmj.zzq)).booleanValue() ? ((Integer) zzls.zzc().zza(zzmj.zzr)).intValue() : this.zzi.zza();
        zzgm zzgmVar = new zzgm((String) this.zze.invoke(null, this.zzj, Boolean.FALSE, HttpUrl.FRAGMENT_ENCODE_SET));
        try {
            if (!this.zza.zzp() || this.zza.zzl() == null || (Build.VERSION.SDK_INT >= 31 && !this.zza.zzl().isDone())) {
                strZzg = "E";
            } else if (this.zzi.zzg()) {
                strZzg = "E";
            } else {
                this.zza.zzl().get(iIntValue, TimeUnit.MILLISECONDS);
                zzbp zzbpVarZzc = this.zza.zzc();
                if (zzbpVarZzc == null || !zzbpVarZzc.zzaj()) {
                    strZzg = "E";
                } else {
                    strZzg = zzbpVarZzc.zzg();
                }
            }
        } catch (InterruptedException | ExecutionException | TimeoutException unused) {
        }
        if (strZzg.equals("E")) {
            try {
                String str = (String) this.zzk.zza().get(iIntValue, TimeUnit.MILLISECONDS);
                if (true != zzjm.zzd(str)) {
                    strZzg = str;
                }
            } catch (ClassCastException | InterruptedException | ExecutionException | TimeoutException unused2) {
            }
        }
        zzgmVar.zza = strZzg;
        return zzgmVar;
    }

    private final String zzd() {
        try {
            if (this.zza.zzl() != null) {
                this.zza.zzl().get();
            }
            zzbp zzbpVarZzc = this.zza.zzc();
            if (zzbpVarZzc == null || !zzbpVarZzc.zzaj()) {
                return null;
            }
            return zzbpVarZzc.zzg();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzkx
    public final void zza() {
        int i8;
        zzgm zzgmVarZzc;
        zzgm zzgmVar;
        AtomicReference atomicReferenceZza = zzh.zza(this.zzj.getPackageName());
        synchronized (atomicReferenceZza) {
            try {
                zzgm zzgmVar2 = (zzgm) atomicReferenceZza.get();
                if (zzgmVar2 == null || zzjm.zzd(zzgmVar2.zza) || zzgmVar2.zza.equals("E") || zzgmVar2.zza.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                    if (zzjm.zzd(null)) {
                        zzjm.zzd(null);
                        i8 = 3;
                    } else {
                        i8 = 5;
                    }
                    if (this.zzk != null) {
                        zzgmVarZzc = zzc();
                    } else {
                        Boolean boolValueOf = Boolean.valueOf(i8 == 3 && !this.zzi.zzf());
                        Boolean bool = (Boolean) zzls.zzc().zza(zzmj.zze);
                        String strZzb = ((Boolean) zzls.zzc().zza(zzmj.zzd)).booleanValue() ? zzb() : null;
                        if (bool.booleanValue() && this.zza.zzp() && zzjm.zzd(strZzb)) {
                            strZzb = zzd();
                        }
                        zzgm zzgmVar3 = new zzgm((String) this.zze.invoke(null, this.zzj, boolValueOf, strZzb));
                        if (zzjm.zzd(zzgmVar3.zza) || zzgmVar3.zza.equals("E")) {
                            int i9 = i8 - 1;
                            if (i9 == 3) {
                                String strZzd = zzd();
                                if (!zzjm.zzd(strZzd)) {
                                    zzgmVar3.zza = strZzd;
                                }
                            } else if (i9 == 4) {
                                throw null;
                            }
                        }
                        zzgmVarZzc = zzgmVar3;
                    }
                    atomicReferenceZza.set(zzgmVarZzc);
                }
                zzgmVar = (zzgm) atomicReferenceZza.get();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.zzd) {
            if (zzgmVar != null) {
                try {
                    this.zzd.zzx(zzgmVar.zza);
                    this.zzd.zzX(zzgmVar.zzb);
                    this.zzd.zzZ(zzgmVar.zzc);
                    this.zzd.zzi(zzgmVar.zzd);
                    this.zzd.zzw(zzgmVar.zze);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.ads.interactivemedia.v3.internal.zzkz] */
    public final String zzb() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] bArrZzf = zzjm.zzf((String) zzls.zzc().zza(zzmj.zzf));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(bArrZzf)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(zzjm.zzf((String) zzls.zzc().zza(zzmj.zzg)))));
            }
            Context context = this.zzj;
            String packageName = context.getPackageName();
            this.zza.zzk();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
                return null;
            }
            final zzvd zzvdVarZzs = zzvd.zzs();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.ads.interactivemedia.v3.internal.zzkz
                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list) {
                    zzvd zzvdVar = zzvdVarZzs;
                    if (list == null) {
                        zzvdVar.zzc(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i8 = 0; i8 < size; i8++) {
                            ApkChecksum apkChecksumD = AbstractC0257f.d(list.get(i8));
                            if (apkChecksumD.getType() == 8) {
                                zzvdVar.zzc(zzjm.zzb(apkChecksumD.getValue()));
                                return;
                            }
                        }
                        zzvdVar.zzc(null);
                    } catch (Throwable unused) {
                        zzvdVar.zzc(null);
                    }
                }
            });
            return (String) zzvdVarZzs.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }
}
