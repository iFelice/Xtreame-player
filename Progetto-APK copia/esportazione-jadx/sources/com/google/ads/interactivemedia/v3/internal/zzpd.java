package com.google.ads.interactivemedia.v3.internal;

import P3.c;
import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class zzpd {
    private static final Object zza = new Object();
    private final Context zzb;
    private final SharedPreferences zzc;
    private final String zzd;
    private final zzom zze;
    private boolean zzf;

    public zzpd(Context context, int i8, zzom zzomVar, boolean z7) {
        this.zzf = false;
        this.zzb = context;
        this.zzd = Integer.toString(i8 - 1);
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        this.zze = zzomVar;
        this.zzf = z7;
    }

    private final File zze(String str) {
        return new File(new File(this.zzb.getDir("pccache", 0), this.zzd), str);
    }

    private static String zzf(zzlc zzlcVar) {
        zzle zzleVarZzd = zzlf.zzd();
        zzleVarZzd.zze(zzlcVar.zzc().zzj());
        zzleVarZzd.zza(zzlcVar.zzc().zzi());
        zzleVarZzd.zzb(zzlcVar.zzc().zza());
        zzleVarZzd.zzd(zzlcVar.zzc().zzc());
        zzleVarZzd.zzc(zzlcVar.zzc().zzb());
        return c.b(((zzlf) zzleVarZzd.zzal()).zzav());
    }

    private final String zzg() {
        return "FBAMTD".concat(String.valueOf(this.zzd));
    }

    private final String zzh() {
        return "LATMTD".concat(String.valueOf(this.zzd));
    }

    private final void zzi(int i8, long j8) {
        this.zze.zza(i8, j8);
    }

    private final void zzj(int i8, long j8, String str) {
        this.zze.zzb(i8, j8, str);
    }

    private final zzlf zzk(int i8) {
        String string = i8 == 1 ? this.zzc.getString(zzh(), null) : this.zzc.getString(zzg(), null);
        if (string == null) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            byte[] bArrD = c.d(string);
            return zzlf.zzh(zzacw.zzp(bArrD, 0, bArrD.length), this.zzf ? zzadk.zza() : zzadk.zzb());
        } catch (zzaeg unused) {
            return null;
        } catch (NullPointerException unused2) {
            zzi(2029, jCurrentTimeMillis);
            return null;
        } catch (RuntimeException unused3) {
            zzi(2032, jCurrentTimeMillis);
            return null;
        }
    }

    public final boolean zza(zzlc zzlcVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                if (!zzox.zze(new File(zze(zzlcVar.zzc().zzj()), "pcbc"), zzlcVar.zzd().zzt())) {
                    zzi(4020, jCurrentTimeMillis);
                    return false;
                }
                String strZzf = zzf(zzlcVar);
                SharedPreferences.Editor editorEdit = this.zzc.edit();
                editorEdit.putString(zzh(), strZzf);
                boolean zCommit = editorEdit.commit();
                if (zCommit) {
                    zzi(5015, jCurrentTimeMillis);
                } else {
                    zzi(4021, jCurrentTimeMillis);
                }
                return zCommit;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzb(zzlc zzlcVar, zzpc zzpcVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzlf zzlfVarZzk = zzk(1);
                String strZzj = zzlcVar.zzc().zzj();
                if (zzlfVarZzk != null && zzlfVarZzk.zzj().equals(strZzj)) {
                    zzi(4014, jCurrentTimeMillis);
                    return false;
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                File fileZze = zze(strZzj);
                if (fileZze.exists()) {
                    zzj(4023, jCurrentTimeMillis2, "d:" + (true != fileZze.isDirectory() ? "0" : "1") + ",f:" + (true != fileZze.isFile() ? "0" : "1"));
                    zzi(4015, jCurrentTimeMillis2);
                } else if (!fileZze.mkdirs()) {
                    zzj(4024, jCurrentTimeMillis2, "cw:".concat(true != fileZze.canWrite() ? "0" : "1"));
                    zzi(4015, jCurrentTimeMillis2);
                    return false;
                }
                File fileZze2 = zze(strZzj);
                File file = new File(fileZze2, "pcam.jar");
                File file2 = new File(fileZze2, "pcbc");
                if (!zzox.zze(file, zzlcVar.zze().zzt())) {
                    zzi(4016, jCurrentTimeMillis);
                    return false;
                }
                if (!zzox.zze(file2, zzlcVar.zzd().zzt())) {
                    zzi(4017, jCurrentTimeMillis);
                    return false;
                }
                if (zzpcVar != null && !zzpcVar.zza(file)) {
                    zzi(4018, jCurrentTimeMillis);
                    zzox.zzd(fileZze2);
                    return false;
                }
                String strZzf = zzf(zzlcVar);
                long jCurrentTimeMillis3 = System.currentTimeMillis();
                String string = this.zzc.getString(zzh(), null);
                SharedPreferences.Editor editorEdit = this.zzc.edit();
                editorEdit.putString(zzh(), strZzf);
                if (string != null) {
                    editorEdit.putString(zzg(), string);
                }
                if (!editorEdit.commit()) {
                    zzi(4019, jCurrentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                zzlf zzlfVarZzk2 = zzk(1);
                if (zzlfVarZzk2 != null) {
                    hashSet.add(zzlfVarZzk2.zzj());
                }
                zzlf zzlfVarZzk3 = zzk(2);
                if (zzlfVarZzk3 != null) {
                    hashSet.add(zzlfVarZzk3.zzj());
                }
                for (File file3 : new File(this.zzb.getDir("pccache", 0), this.zzd).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        zzox.zzd(file3);
                    }
                }
                zzi(5014, jCurrentTimeMillis);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzov zzc(int i8) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzlf zzlfVarZzk = zzk(1);
                if (zzlfVarZzk == null) {
                    zzi(4022, jCurrentTimeMillis);
                    return null;
                }
                File fileZze = zze(zzlfVarZzk.zzj());
                File file = new File(fileZze, "pcam.jar");
                if (!file.exists()) {
                    file = new File(fileZze, "pcam");
                }
                File file2 = new File(fileZze, "pcbc");
                File file3 = new File(fileZze, "pcopt");
                zzi(5016, jCurrentTimeMillis);
                return new zzov(zzlfVarZzk, file, file2, file3);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd(int i8) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (zza) {
            try {
                zzlf zzlfVarZzk = zzk(1);
                if (zzlfVarZzk == null) {
                    zzi(4025, jCurrentTimeMillis);
                    return false;
                }
                File fileZze = zze(zzlfVarZzk.zzj());
                if (!new File(fileZze, "pcam.jar").exists()) {
                    zzi(4026, jCurrentTimeMillis);
                    return false;
                }
                if (new File(fileZze, "pcbc").exists()) {
                    zzi(5019, jCurrentTimeMillis);
                    return true;
                }
                zzi(4027, jCurrentTimeMillis);
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
