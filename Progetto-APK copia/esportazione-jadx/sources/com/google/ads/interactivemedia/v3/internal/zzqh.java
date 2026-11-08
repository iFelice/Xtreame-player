package com.google.ads.interactivemedia.v3.internal;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzqh {
    public static int zza(int i8, int i9, String str) {
        String strZzb;
        if (i8 >= 0 && i8 < i9) {
            return i8;
        }
        if (i8 < 0) {
            strZzb = zzqm.zzb("%s (%s) must not be negative", "index", Integer.valueOf(i8));
        } else {
            if (i9 < 0) {
                throw new IllegalArgumentException(r.f("negative size: ", i9));
            }
            strZzb = zzqm.zzb("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i8), Integer.valueOf(i9));
        }
        throw new IndexOutOfBoundsException(strZzb);
    }

    public static int zzb(int i8, int i9, String str) {
        if (i8 < 0 || i8 > i9) {
            throw new IndexOutOfBoundsException(zzj(i8, i9, "index"));
        }
        return i8;
    }

    public static Object zzc(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("Executor was null.");
    }

    public static void zzd(boolean z7) {
        if (!z7) {
            throw new IllegalArgumentException();
        }
    }

    public static void zze(boolean z7, Object obj) {
        if (!z7) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    public static void zzf(boolean z7, String str, char c8) {
        if (!z7) {
            throw new IllegalArgumentException(zzqm.zzb(str, Character.valueOf(c8)));
        }
    }

    public static void zzg(boolean z7, String str, Object obj) {
        if (!z7) {
            throw new IllegalArgumentException(zzqm.zzb(str, obj));
        }
    }

    public static void zzh(int i8, int i9, int i10) {
        String strZzj;
        if (i8 < 0 || i9 < i8 || i9 > i10) {
            if (i8 < 0 || i8 > i10) {
                strZzj = zzj(i8, i10, "start index");
            } else {
                strZzj = (i9 < 0 || i9 > i10) ? zzj(i9, i10, "end index") : zzqm.zzb("end index (%s) must not be less than start index (%s)", Integer.valueOf(i9), Integer.valueOf(i8));
            }
            throw new IndexOutOfBoundsException(strZzj);
        }
    }

    public static void zzi(boolean z7, Object obj) {
        if (!z7) {
            throw new IllegalStateException((String) obj);
        }
    }

    private static String zzj(int i8, int i9, String str) {
        if (i8 < 0) {
            return zzqm.zzb("%s (%s) must not be negative", str, Integer.valueOf(i8));
        }
        if (i9 >= 0) {
            return zzqm.zzb("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i8), Integer.valueOf(i9));
        }
        throw new IllegalArgumentException(r.f("negative size: ", i9));
    }
}
