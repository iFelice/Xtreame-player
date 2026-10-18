package com.google.ads.interactivemedia.v3.internal;

import P3.c;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.File;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class zzow {
    final File zza;
    private final File zzb;
    private final SharedPreferences zzc;
    private final int zzd;

    public zzow(Context context, int i8) {
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzox.zza(dir, false);
        this.zzb = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzox.zza(dir2, true);
        this.zza = dir2;
        this.zzd = i8;
    }

    private final File zzd() {
        File file = new File(this.zzb, Integer.toString(this.zzd - 1));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zze() {
        StringBuilder sb = new StringBuilder("FBAMTD");
        sb.append(this.zzd - 1);
        return sb.toString();
    }

    private final String zzf() {
        StringBuilder sb = new StringBuilder("LATMTD");
        sb.append(this.zzd - 1);
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0087  */
    public final boolean zza(zzlc zzlcVar, zzpc zzpcVar) {
        boolean z7;
        String strZzj = zzlcVar.zzc().zzj();
        byte[] bArrZzt = zzlcVar.zze().zzt();
        byte[] bArrZzt2 = zzlcVar.zzd().zzt();
        if (!TextUtils.isEmpty(strZzj) && bArrZzt2 != null && bArrZzt2.length != 0) {
            zzox.zzd(this.zza);
            this.zza.mkdirs();
            zzox.zzc(strZzj, this.zza).mkdirs();
            File fileZzb = zzox.zzb(strZzj, "pcam.jar", this.zza);
            if ((bArrZzt == null || bArrZzt.length <= 0 || zzox.zze(fileZzb, bArrZzt)) && zzox.zze(zzox.zzb(strZzj, "pcbc", this.zza), bArrZzt2)) {
                File fileZzb2 = zzox.zzb(zzlcVar.zzc().zzj(), "pcam.jar", this.zza);
                if (fileZzb2.exists() && zzpcVar != null && !zzpcVar.zza(fileZzb2)) {
                    return false;
                }
                String strZzj2 = zzlcVar.zzc().zzj();
                if (TextUtils.isEmpty(strZzj2)) {
                    z7 = false;
                } else {
                    File fileZzb3 = zzox.zzb(strZzj2, "pcam.jar", this.zza);
                    File fileZzb4 = zzox.zzb(strZzj2, "pcbc", this.zza);
                    File fileZzb5 = zzox.zzb(strZzj2, "pcam.jar", zzd());
                    File fileZzb6 = zzox.zzb(strZzj2, "pcbc", zzd());
                    if ((!fileZzb3.exists() || fileZzb3.renameTo(fileZzb5)) && fileZzb4.exists() && fileZzb4.renameTo(fileZzb6)) {
                        zzle zzleVarZzd = zzlf.zzd();
                        zzleVarZzd.zze(zzlcVar.zzc().zzj());
                        zzleVarZzd.zza(zzlcVar.zzc().zzi());
                        zzleVarZzd.zzb(zzlcVar.zzc().zza());
                        zzleVarZzd.zzd(zzlcVar.zzc().zzc());
                        zzleVarZzd.zzc(zzlcVar.zzc().zzb());
                        zzlf zzlfVar = (zzlf) zzleVarZzd.zzal();
                        zzlf zzlfVarZzb = zzb(1);
                        SharedPreferences.Editor editorEdit = this.zzc.edit();
                        if (zzlfVarZzb != null && !zzlfVar.zzj().equals(zzlfVarZzb.zzj())) {
                            editorEdit.putString(zze(), c.b(zzlfVarZzb.zzav()));
                        }
                        editorEdit.putString(zzf(), c.b(zzlfVar.zzav()));
                        if (editorEdit.commit()) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                    } else {
                        z7 = false;
                    }
                }
                HashSet hashSet = new HashSet();
                zzlf zzlfVarZzb2 = zzb(1);
                if (zzlfVarZzb2 != null) {
                    hashSet.add(zzlfVarZzb2.zzj());
                }
                zzlf zzlfVarZzb3 = zzb(2);
                if (zzlfVarZzb3 != null) {
                    hashSet.add(zzlfVarZzb3.zzj());
                }
                for (File file : zzd().listFiles()) {
                    String name = file.getName();
                    if (!hashSet.contains(name)) {
                        zzox.zzd(zzox.zzc(name, zzd()));
                    }
                }
                return z7;
            }
        }
        return false;
    }

    public final zzlf zzb(int i8) {
        String string = i8 == 1 ? this.zzc.getString(zzf(), null) : this.zzc.getString(zze(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            byte[] bArrD = c.d(string);
            zzlf zzlfVarZzg = zzlf.zzg(zzacw.zzp(bArrD, 0, bArrD.length));
            String strZzj = zzlfVarZzg.zzj();
            File fileZzb = zzox.zzb(strZzj, "pcam.jar", zzd());
            if (!fileZzb.exists()) {
                fileZzb = zzox.zzb(strZzj, "pcam", zzd());
            }
            File fileZzb2 = zzox.zzb(strZzj, "pcbc", zzd());
            if (fileZzb.exists() && fileZzb2.exists()) {
                return zzlfVarZzg;
            }
            return null;
        } catch (zzaeg unused) {
        }
    }

    public final zzov zzc(int i8) {
        zzlf zzlfVarZzb = zzb(1);
        if (zzlfVarZzb == null) {
            return null;
        }
        String strZzj = zzlfVarZzb.zzj();
        File fileZzb = zzox.zzb(strZzj, "pcam.jar", zzd());
        if (!fileZzb.exists()) {
            fileZzb = zzox.zzb(strZzj, "pcam", zzd());
        }
        return new zzov(zzlfVarZzb, fileZzb, zzox.zzb(strZzj, "pcbc", zzd()), zzox.zzb(strZzj, "pcopt", zzd()));
    }
}
