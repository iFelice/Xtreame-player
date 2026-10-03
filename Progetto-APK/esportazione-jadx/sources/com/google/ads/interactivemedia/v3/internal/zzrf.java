package com.google.ads.interactivemedia.v3.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzrf extends AbstractMap implements Serializable, zzqs {
    transient Object[] zza;
    transient Object[] zzb;
    transient int zzc;
    transient int zzd;
    private transient int[] zze;
    private transient int[] zzf;
    private transient int[] zzg;
    private transient int[] zzh;
    private transient int zzi;
    private transient int zzj;
    private transient int[] zzk;
    private transient int[] zzl;
    private transient Set zzm;
    private transient Set zzn;
    private transient Set zzo;
    private transient zzqs zzp;

    private zzrf(int i8) {
        int iZza = zzrg.zza(2, 1.0d);
        this.zzc = 0;
        this.zza = new Object[2];
        this.zzb = new Object[2];
        this.zze = zzy(iZza);
        this.zzf = zzy(iZza);
        this.zzg = zzy(2);
        this.zzh = zzy(2);
        this.zzi = -2;
        this.zzj = -2;
        this.zzk = zzy(2);
        this.zzl = zzy(2);
    }

    public static zzrf zzf(int i8) {
        return new zzrf(2);
    }

    private final int zzo(int i8) {
        return i8 & (this.zze.length - 1);
    }

    private final void zzp(int i8, int i9) {
        zzqh.zzd(i8 != -1);
        int iZzo = zzo(i9);
        int[] iArr = this.zze;
        int i10 = iArr[iZzo];
        if (i10 == i8) {
            int[] iArr2 = this.zzg;
            iArr[iZzo] = iArr2[i8];
            iArr2[i8] = -1;
            return;
        }
        int i11 = this.zzg[i10];
        while (true) {
            int i12 = i10;
            i10 = i11;
            if (i10 == -1) {
                throw new AssertionError("Expected to find entry with key ".concat(String.valueOf(this.zza[i8])));
            }
            if (i10 == i8) {
                int[] iArr3 = this.zzg;
                iArr3[i12] = iArr3[i8];
                iArr3[i8] = -1;
                return;
            }
            i11 = this.zzg[i10];
        }
    }

    private final void zzq(int i8, int i9) {
        zzqh.zzd(i8 != -1);
        int iZzo = zzo(i9);
        int[] iArr = this.zzf;
        int i10 = iArr[iZzo];
        if (i10 == i8) {
            int[] iArr2 = this.zzh;
            iArr[iZzo] = iArr2[i8];
            iArr2[i8] = -1;
            return;
        }
        int i11 = this.zzh[i10];
        while (true) {
            int i12 = i10;
            i10 = i11;
            if (i10 == -1) {
                throw new AssertionError("Expected to find entry with value ".concat(String.valueOf(this.zzb[i8])));
            }
            if (i10 == i8) {
                int[] iArr3 = this.zzh;
                iArr3[i12] = iArr3[i8];
                iArr3[i8] = -1;
                return;
            }
            i11 = this.zzh[i10];
        }
    }

    private final void zzr(int i8) {
        int length = this.zzg.length;
        if (length < i8) {
            int iZza = zzrh.zza(length, i8);
            this.zza = Arrays.copyOf(this.zza, iZza);
            this.zzb = Arrays.copyOf(this.zzb, iZza);
            this.zzg = zzz(this.zzg, iZza);
            this.zzh = zzz(this.zzh, iZza);
            this.zzk = zzz(this.zzk, iZza);
            this.zzl = zzz(this.zzl, iZza);
        }
        if (this.zze.length < i8) {
            int iZza2 = zzrg.zza(i8, 1.0d);
            this.zze = zzy(iZza2);
            this.zzf = zzy(iZza2);
            for (int i9 = 0; i9 < this.zzc; i9++) {
                int iZzo = zzo(zzrg.zzc(this.zza[i9]));
                int[] iArr = this.zzg;
                int[] iArr2 = this.zze;
                iArr[i9] = iArr2[iZzo];
                iArr2[iZzo] = i9;
                int iZzo2 = zzo(zzrg.zzc(this.zzb[i9]));
                int[] iArr3 = this.zzh;
                int[] iArr4 = this.zzf;
                iArr3[i9] = iArr4[iZzo2];
                iArr4[iZzo2] = i9;
            }
        }
    }

    private final void zzs(int i8, int i9) {
        zzqh.zzd(i8 != -1);
        int iZzo = zzo(i9);
        int[] iArr = this.zzg;
        int[] iArr2 = this.zze;
        iArr[i8] = iArr2[iZzo];
        iArr2[iZzo] = i8;
    }

    private final void zzt(int i8, int i9) {
        zzqh.zzd(i8 != -1);
        int iZzo = zzo(i9);
        int[] iArr = this.zzh;
        int[] iArr2 = this.zzf;
        iArr[i8] = iArr2[iZzo];
        iArr2[iZzo] = i8;
    }

    private final void zzu(int i8, int i9, int i10) {
        int i11;
        int i12;
        zzqh.zzd(i8 != -1);
        zzp(i8, i9);
        zzq(i8, i10);
        zzx(this.zzk[i8], this.zzl[i8]);
        int i13 = this.zzc - 1;
        if (i13 != i8) {
            int i14 = this.zzk[i13];
            int i15 = this.zzl[i13];
            zzx(i14, i8);
            zzx(i8, i15);
            Object[] objArr = this.zza;
            Object obj = objArr[i13];
            Object[] objArr2 = this.zzb;
            Object obj2 = objArr2[i13];
            objArr[i8] = obj;
            objArr2[i8] = obj2;
            int iZzo = zzo(zzrg.zzc(obj));
            int[] iArr = this.zze;
            int i16 = iArr[iZzo];
            if (i16 == i13) {
                iArr[iZzo] = i8;
            } else {
                int i17 = this.zzg[i16];
                while (true) {
                    i11 = i16;
                    i16 = i17;
                    if (i16 == i13) {
                        break;
                    } else {
                        i17 = this.zzg[i16];
                    }
                }
                this.zzg[i11] = i8;
            }
            int[] iArr2 = this.zzg;
            iArr2[i8] = iArr2[i13];
            iArr2[i13] = -1;
            int iZzo2 = zzo(zzrg.zzc(obj2));
            int[] iArr3 = this.zzf;
            int i18 = iArr3[iZzo2];
            if (i18 == i13) {
                iArr3[iZzo2] = i8;
            } else {
                int i19 = this.zzh[i18];
                while (true) {
                    i12 = i18;
                    i18 = i19;
                    if (i18 == i13) {
                        break;
                    } else {
                        i19 = this.zzh[i18];
                    }
                }
                this.zzh[i12] = i8;
            }
            int[] iArr4 = this.zzh;
            iArr4[i8] = iArr4[i13];
            iArr4[i13] = -1;
        }
        Object[] objArr3 = this.zza;
        int i20 = this.zzc - 1;
        objArr3[i20] = null;
        this.zzb[i20] = null;
        this.zzc = i20;
        this.zzd++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzv(int i8, Object obj, boolean z7) {
        zzqh.zzd(i8 != -1);
        int iZzc = zzc(obj, zzrg.zzc(obj));
        int i9 = this.zzj;
        if (iZzc != -1) {
            throw new IllegalArgumentException("Key already present in map: ".concat(String.valueOf(obj)));
        }
        if (i9 == i8) {
            i9 = this.zzk[i8];
        } else if (i9 == this.zzc) {
            i9 = iZzc;
        }
        if (i8 == -2) {
            iZzc = this.zzl[-2];
        } else if (this.zzc != -2) {
            iZzc = -2;
        }
        zzx(this.zzk[i8], this.zzl[i8]);
        zzp(i8, zzrg.zzc(this.zza[i8]));
        this.zza[i8] = obj;
        zzs(i8, zzrg.zzc(obj));
        zzx(i9, i8);
        zzx(i8, iZzc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzw(int i8, Object obj, boolean z7) {
        zzqh.zzd(i8 != -1);
        int iZzc = zzrg.zzc(obj);
        if (zzd(obj, iZzc) != -1) {
            throw new IllegalArgumentException("Value already present in map: ".concat(String.valueOf(obj)));
        }
        zzq(i8, zzrg.zzc(this.zzb[i8]));
        this.zzb[i8] = obj;
        zzt(i8, iZzc);
    }

    private final void zzx(int i8, int i9) {
        if (i8 == -2) {
            this.zzi = i9;
        } else {
            this.zzl[i8] = i9;
        }
        if (i9 == -2) {
            this.zzj = i8;
        } else {
            this.zzk[i9] = i8;
        }
    }

    private static int[] zzy(int i8) {
        int[] iArr = new int[i8];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private static int[] zzz(int[] iArr, int i8) {
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, i8);
        Arrays.fill(iArrCopyOf, length, i8, -1);
        return iArrCopyOf;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Arrays.fill(this.zza, 0, this.zzc, (Object) null);
        Arrays.fill(this.zzb, 0, this.zzc, (Object) null);
        Arrays.fill(this.zze, -1);
        Arrays.fill(this.zzf, -1);
        Arrays.fill(this.zzg, 0, this.zzc, -1);
        Arrays.fill(this.zzh, 0, this.zzc, -1);
        Arrays.fill(this.zzk, 0, this.zzc, -1);
        Arrays.fill(this.zzl, 0, this.zzc, -1);
        this.zzc = 0;
        this.zzi = -2;
        this.zzj = -2;
        this.zzd++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return zzc(obj, zzrg.zzc(obj)) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        return zzd(obj, zzrg.zzc(obj)) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.zzo;
        if (set != null) {
            return set;
        }
        zzqy zzqyVar = new zzqy(this);
        this.zzo = zzqyVar;
        return zzqyVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        int iZzc = zzc(obj, zzrg.zzc(obj));
        if (iZzc == -1) {
            return null;
        }
        return this.zzb[iZzc];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.zzm;
        if (set != null) {
            return set;
        }
        zzrb zzrbVar = new zzrb(this);
        this.zzm = zzrbVar;
        return zzrbVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        return zzg(obj, obj2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        int iZzc = zzrg.zzc(obj);
        int iZzc2 = zzc(obj, iZzc);
        if (iZzc2 == -1) {
            return null;
        }
        Object obj2 = this.zzb[iZzc2];
        zzl(iZzc2, iZzc);
        return obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zzc;
    }

    public final int zzb(Object obj, int i8, int[] iArr, int[] iArr2, Object[] objArr) {
        int i9 = iArr[zzo(i8)];
        while (i9 != -1) {
            if (zzqe.zza(objArr[i9], obj)) {
                return i9;
            }
            i9 = iArr2[i9];
        }
        return -1;
    }

    public final int zzc(Object obj, int i8) {
        return zzb(obj, i8, this.zze, this.zzg, this.zza);
    }

    public final int zzd(Object obj, int i8) {
        return zzb(obj, i8, this.zzf, this.zzh, this.zzb);
    }

    public final zzqs zze() {
        zzqs zzqsVar = this.zzp;
        if (zzqsVar != null) {
            return zzqsVar;
        }
        zzqz zzqzVar = new zzqz(this);
        this.zzp = zzqzVar;
        return zzqzVar;
    }

    public final Object zzg(Object obj, Object obj2, boolean z7) {
        int iZzc = zzrg.zzc(obj);
        int iZzc2 = zzc(obj, iZzc);
        if (iZzc2 != -1) {
            Object obj3 = this.zzb[iZzc2];
            if (zzqe.zza(obj3, obj2)) {
                return obj2;
            }
            zzw(iZzc2, obj2, false);
            return obj3;
        }
        int iZzc3 = zzrg.zzc(obj2);
        zzqh.zzg(zzd(obj2, iZzc3) == -1, "Value already present: %s", obj2);
        zzr(this.zzc + 1);
        Object[] objArr = this.zza;
        int i8 = this.zzc;
        objArr[i8] = obj;
        this.zzb[i8] = obj2;
        zzs(i8, iZzc);
        zzt(this.zzc, iZzc3);
        zzx(this.zzj, this.zzc);
        zzx(this.zzc, -2);
        this.zzc++;
        this.zzd++;
        return null;
    }

    public final Object zzh(Object obj, Object obj2, boolean z7) {
        int iZzc = zzrg.zzc(obj);
        int iZzd = zzd(obj, iZzc);
        if (iZzd != -1) {
            Object obj3 = this.zza[iZzd];
            if (zzqe.zza(obj3, obj2)) {
                return obj2;
            }
            zzv(iZzd, obj2, false);
            return obj3;
        }
        int i8 = this.zzj;
        int iZzc2 = zzrg.zzc(obj2);
        zzqh.zzg(zzc(obj2, iZzc2) == -1, "Key already present: %s", obj2);
        zzr(this.zzc + 1);
        Object[] objArr = this.zza;
        int i9 = this.zzc;
        objArr[i9] = obj2;
        this.zzb[i9] = obj;
        zzs(i9, iZzc2);
        zzt(this.zzc, iZzc);
        int i10 = i8 == -2 ? this.zzi : this.zzl[i8];
        zzx(i8, this.zzc);
        zzx(this.zzc, i10);
        this.zzc++;
        this.zzd++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public final Set values() {
        Set set = this.zzn;
        if (set != null) {
            return set;
        }
        zzrc zzrcVar = new zzrc(this);
        this.zzn = zzrcVar;
        return zzrcVar;
    }

    public final void zzl(int i8, int i9) {
        zzu(i8, i9, zzrg.zzc(this.zzb[i8]));
    }

    public final void zzm(int i8, int i9) {
        zzu(i8, zzrg.zzc(this.zza[i8]), i9);
    }
}
