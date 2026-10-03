package com.google.ads.interactivemedia.v3.internal;

import android.content.Context;
import android.os.Bundle;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzpf {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzpg zzc;
    private final zznt zzd;
    private final zzno zze;
    private zzou zzf;
    private final Object zzg = new Object();

    public zzpf(Context context, zzpg zzpgVar, zznt zzntVar, zzno zznoVar) {
        this.zzb = context;
        this.zzc = zzpgVar;
        this.zzd = zzntVar;
        this.zze = zznoVar;
    }

    private final synchronized Class zzd(zzov zzovVar) {
        try {
            String strZzj = zzovVar.zza().zzj();
            HashMap map = zza;
            Class cls = (Class) map.get(strZzj);
            if (cls != null) {
                return cls;
            }
            try {
                if (!this.zze.zza(zzovVar.zzc())) {
                    throw new zzpe(2026, "VM did not pass signature verification");
                }
                try {
                    File fileZzb = zzovVar.zzb();
                    if (!fileZzb.exists()) {
                        fileZzb.mkdirs();
                    }
                    Class<?> clsLoadClass = new DexClassLoader(zzovVar.zzc().getAbsolutePath(), fileZzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    map.put(strZzj, clsLoadClass);
                    return clsLoadClass;
                } catch (ClassNotFoundException e8) {
                    e = e8;
                    throw new zzpe(2008, e);
                } catch (IllegalArgumentException e9) {
                    e = e9;
                    throw new zzpe(2008, e);
                } catch (SecurityException e10) {
                    e = e10;
                    throw new zzpe(2008, e);
                }
            } catch (GeneralSecurityException e11) {
                throw new zzpe(2026, e11);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final zznw zza() {
        zzou zzouVar;
        synchronized (this.zzg) {
            zzouVar = this.zzf;
        }
        return zzouVar;
    }

    public final zzov zzb() {
        synchronized (this.zzg) {
            try {
                zzou zzouVar = this.zzf;
                if (zzouVar == null) {
                    return null;
                }
                return zzouVar.zzf();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzc(zzov zzovVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzou zzouVar = new zzou(zzd(zzovVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzovVar.zze(), null, new Bundle(), 2), zzovVar, this.zzc, this.zzd);
                if (!zzouVar.zzh()) {
                    throw new zzpe(4000, "init failed");
                }
                int iZze = zzouVar.zze();
                if (iZze != 0) {
                    throw new zzpe(4001, "ci: " + iZze);
                }
                synchronized (this.zzg) {
                    zzou zzouVar2 = this.zzf;
                    if (zzouVar2 != null) {
                        try {
                            zzouVar2.zzg();
                        } catch (zzpe e8) {
                            this.zzd.zzc(e8.zza(), -1L, e8);
                        }
                        this.zzf = zzouVar;
                    } else {
                        this.zzf = zzouVar;
                    }
                    throw th;
                }
                this.zzd.zzd(3000, System.currentTimeMillis() - jCurrentTimeMillis);
                return true;
            } catch (Exception e9) {
                throw new zzpe(2004, e9);
            }
        } catch (zzpe e10) {
            this.zzd.zzc(e10.zza(), System.currentTimeMillis() - jCurrentTimeMillis, e10);
            return false;
        } catch (Exception e11) {
            this.zzd.zzc(4010, System.currentTimeMillis() - jCurrentTimeMillis, e11);
            return false;
        }
    }
}
