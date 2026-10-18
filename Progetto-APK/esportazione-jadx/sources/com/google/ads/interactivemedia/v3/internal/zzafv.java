package com.google.ads.interactivemedia.v3.internal;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
final class zzafv {
    public static final /* synthetic */ int zza = 0;
    private static final zzagh zzb;

    static {
        int i8 = zzafi.zza;
        zzb = new zzagj();
    }

    public static void zzA(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzA(i8, list, z7);
    }

    public static void zzB(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzC(i8, list, z7);
    }

    public static void zzC(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzE(i8, list, z7);
    }

    public static void zzD(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzJ(i8, list, z7);
    }

    public static void zzE(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzL(i8, list, z7);
    }

    public static boolean zzF(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int zza(List list) {
        int iZzA;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzadz) {
            zzadz zzadzVar = (zzadz) list;
            iZzA = 0;
            while (i8 < size) {
                iZzA += zzadf.zzA(zzadzVar.zze(i8));
                i8++;
            }
        } else {
            iZzA = 0;
            while (i8 < size) {
                iZzA += zzadf.zzA(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iZzA;
    }

    public static int zzb(int i8, List list, boolean z7) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzadf.zzz(i8 << 3) + 4) * size;
    }

    public static int zzc(List list) {
        return list.size() * 4;
    }

    public static int zzd(int i8, List list, boolean z7) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzadf.zzz(i8 << 3) + 8) * size;
    }

    public static int zze(List list) {
        return list.size() * 8;
    }

    public static int zzf(List list) {
        int iZzA;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzadz) {
            zzadz zzadzVar = (zzadz) list;
            iZzA = 0;
            while (i8 < size) {
                iZzA += zzadf.zzA(zzadzVar.zze(i8));
                i8++;
            }
        } else {
            iZzA = 0;
            while (i8 < size) {
                iZzA += zzadf.zzA(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iZzA;
    }

    public static int zzg(List list) {
        int iZzA;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzaeq) {
            zzaeq zzaeqVar = (zzaeq) list;
            iZzA = 0;
            while (i8 < size) {
                iZzA += zzadf.zzA(zzaeqVar.zze(i8));
                i8++;
            }
        } else {
            iZzA = 0;
            while (i8 < size) {
                iZzA += zzadf.zzA(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iZzA;
    }

    public static int zzh(int i8, Object obj, zzaft zzaftVar) {
        int i9 = i8 << 3;
        if (!(obj instanceof zzaem)) {
            return zzadf.zzx((zzafb) obj, zzaftVar) + zzadf.zzz(i9);
        }
        int iZzz = zzadf.zzz(i9);
        int iZza = ((zzaem) obj).zza();
        return r.c(iZza, iZza, iZzz);
    }

    public static int zzi(List list) {
        int iZzz;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzadz) {
            zzadz zzadzVar = (zzadz) list;
            iZzz = 0;
            while (i8 < size) {
                int iZze = zzadzVar.zze(i8);
                iZzz += zzadf.zzz((iZze >> 31) ^ (iZze + iZze));
                i8++;
            }
        } else {
            iZzz = 0;
            while (i8 < size) {
                int iIntValue = ((Integer) list.get(i8)).intValue();
                iZzz += zzadf.zzz((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i8++;
            }
        }
        return iZzz;
    }

    public static int zzj(List list) {
        int iZzA;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzaeq) {
            zzaeq zzaeqVar = (zzaeq) list;
            iZzA = 0;
            while (i8 < size) {
                long jZze = zzaeqVar.zze(i8);
                iZzA += zzadf.zzA((jZze >> 63) ^ (jZze + jZze));
                i8++;
            }
        } else {
            iZzA = 0;
            while (i8 < size) {
                long jLongValue = ((Long) list.get(i8)).longValue();
                iZzA += zzadf.zzA((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i8++;
            }
        }
        return iZzA;
    }

    public static int zzk(List list) {
        int iZzz;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzadz) {
            zzadz zzadzVar = (zzadz) list;
            iZzz = 0;
            while (i8 < size) {
                iZzz += zzadf.zzz(zzadzVar.zze(i8));
                i8++;
            }
        } else {
            iZzz = 0;
            while (i8 < size) {
                iZzz += zzadf.zzz(((Integer) list.get(i8)).intValue());
                i8++;
            }
        }
        return iZzz;
    }

    public static int zzl(List list) {
        int iZzA;
        int size = list.size();
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzaeq) {
            zzaeq zzaeqVar = (zzaeq) list;
            iZzA = 0;
            while (i8 < size) {
                iZzA += zzadf.zzA(zzaeqVar.zze(i8));
                i8++;
            }
        } else {
            iZzA = 0;
            while (i8 < size) {
                iZzA += zzadf.zzA(((Long) list.get(i8)).longValue());
                i8++;
            }
        }
        return iZzA;
    }

    public static zzagh zzm() {
        return zzb;
    }

    public static Object zzn(Object obj, int i8, List list, zzaeb zzaebVar, Object obj2, zzagh zzaghVar) {
        if (zzaebVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i9 = 0;
            for (int i10 = 0; i10 < size; i10++) {
                Integer num = (Integer) list.get(i10);
                int iIntValue = num.intValue();
                if (zzaebVar.zza(iIntValue)) {
                    if (i10 != i9) {
                        list.set(i9, num);
                    }
                    i9++;
                } else {
                    obj2 = zzo(obj, i8, iIntValue, obj2, zzaghVar);
                }
            }
            if (i9 != size) {
                list.subList(i9, size).clear();
                return obj2;
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int iIntValue2 = ((Integer) it.next()).intValue();
                if (!zzaebVar.zza(iIntValue2)) {
                    obj2 = zzo(obj, i8, iIntValue2, obj2, zzaghVar);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    public static Object zzo(Object obj, int i8, int i9, Object obj2, zzagh zzaghVar) {
        if (obj2 == null) {
            obj2 = zzaghVar.zza(obj);
        }
        zzaghVar.zzh(obj2, i8, i9);
        return obj2;
    }

    public static void zzp(zzadl zzadlVar, Object obj, Object obj2) {
        if (((zzadv) obj2).zzb.zza.isEmpty()) {
            return;
        }
        throw null;
    }

    public static void zzq(zzagh zzaghVar, Object obj, Object obj2) {
        zzady zzadyVar = (zzady) obj;
        zzagi zzagiVarZze = zzadyVar.zzc;
        zzagi zzagiVar = ((zzady) obj2).zzc;
        if (!zzagi.zzc().equals(zzagiVar)) {
            if (zzagi.zzc().equals(zzagiVarZze)) {
                zzagiVarZze = zzagi.zze(zzagiVarZze, zzagiVar);
            } else {
                zzagiVarZze.zzd(zzagiVar);
            }
        }
        zzadyVar.zzc = zzagiVarZze;
    }

    public static void zzr(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzc(i8, list, z7);
    }

    public static void zzs(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzg(i8, list, z7);
    }

    public static void zzt(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzj(i8, list, z7);
    }

    public static void zzu(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzl(i8, list, z7);
    }

    public static void zzv(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzn(i8, list, z7);
    }

    public static void zzw(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzp(i8, list, z7);
    }

    public static void zzx(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzs(i8, list, z7);
    }

    public static void zzy(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzu(i8, list, z7);
    }

    public static void zzz(int i8, List list, zzagu zzaguVar, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzaguVar.zzy(i8, list, z7);
    }
}
