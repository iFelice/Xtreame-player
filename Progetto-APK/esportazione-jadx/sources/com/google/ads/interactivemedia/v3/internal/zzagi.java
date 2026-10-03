package com.google.ads.interactivemedia.v3.internal;

import java.util.Arrays;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzagi {
    private static final zzagi zza = new zzagi(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzagi(int i8, int[] iArr, Object[] objArr, boolean z7) {
        this.zze = -1;
        this.zzb = i8;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z7;
    }

    public static zzagi zzc() {
        return zza;
    }

    public static zzagi zze(zzagi zzagiVar, zzagi zzagiVar2) {
        int i8 = zzagiVar.zzb + zzagiVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzagiVar.zzc, i8);
        System.arraycopy(zzagiVar2.zzc, 0, iArrCopyOf, zzagiVar.zzb, zzagiVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzagiVar.zzd, i8);
        System.arraycopy(zzagiVar2.zzd, 0, objArrCopyOf, zzagiVar.zzb, zzagiVar2.zzb);
        return new zzagi(i8, iArrCopyOf, objArrCopyOf, true);
    }

    public static zzagi zzf() {
        return new zzagi(0, new int[8], new Object[8], true);
    }

    private final void zzm(int i8) {
        int[] iArr = this.zzc;
        if (i8 > iArr.length) {
            int i9 = this.zzb;
            int i10 = (i9 / 2) + i9;
            if (i10 >= i8) {
                i8 = i10;
            }
            if (i8 < 8) {
                i8 = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i8);
            this.zzd = Arrays.copyOf(this.zzd, i8);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzagi)) {
            return false;
        }
        zzagi zzagiVar = (zzagi) obj;
        int i8 = this.zzb;
        if (i8 == zzagiVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzagiVar.zzc;
            for (int i9 = 0; i9 < i8; i9++) {
                if (iArr[i9] == iArr2[i9]) {
                }
            }
            Object[] objArr = this.zzd;
            Object[] objArr2 = zzagiVar.zzd;
            int i10 = this.zzb;
            for (int i11 = 0; i11 < i10; i11++) {
                if (objArr[i11].equals(objArr2[i11])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.zzb;
        int i9 = i8 + 527;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i10 = 17;
        for (int i11 = 0; i11 < i8; i11++) {
            i10 = (i10 * 31) + iArr[i11];
        }
        int i12 = ((i9 * 31) + i10) * 31;
        Object[] objArr = this.zzd;
        int i13 = this.zzb;
        for (int i14 = 0; i14 < i13; i14++) {
            iHashCode = (iHashCode * 31) + objArr[i14].hashCode();
        }
        return i12 + iHashCode;
    }

    public final int zza() {
        int iZzz;
        int iZzA;
        int iZzz2;
        int i8 = this.zze;
        if (i8 != -1) {
            return i8;
        }
        int iZzz3 = 0;
        for (int i9 = 0; i9 < this.zzb; i9++) {
            int i10 = this.zzc[i9];
            int i11 = i10 >>> 3;
            int i12 = i10 & 7;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        int i13 = i11 << 3;
                        zzacw zzacwVar = (zzacw) this.zzd[i9];
                        int iZzz4 = zzadf.zzz(i13);
                        int iZzd = zzacwVar.zzd();
                        iZzz3 = zzadf.zzz(iZzd) + iZzd + iZzz4 + iZzz3;
                    } else if (i12 == 3) {
                        int iZzz5 = zzadf.zzz(i11 << 3);
                        iZzz = iZzz5 + iZzz5;
                        iZzA = ((zzagi) this.zzd[i9]).zza();
                    } else {
                        if (i12 != 5) {
                            throw new IllegalStateException(new zzaef("Protocol message tag had invalid wire type."));
                        }
                        ((Integer) this.zzd[i9]).getClass();
                        iZzz2 = zzadf.zzz(i11 << 3) + 4;
                    }
                } else {
                    ((Long) this.zzd[i9]).getClass();
                    iZzz2 = zzadf.zzz(i11 << 3) + 8;
                }
                iZzz3 = iZzz2 + iZzz3;
            } else {
                int i14 = i11 << 3;
                long jLongValue = ((Long) this.zzd[i9]).longValue();
                iZzz = zzadf.zzz(i14);
                iZzA = zzadf.zzA(jLongValue);
            }
            iZzz3 = iZzA + iZzz + iZzz3;
        }
        this.zze = iZzz3;
        return iZzz3;
    }

    public final int zzb() {
        int i8 = this.zze;
        if (i8 != -1) {
            return i8;
        }
        int iC = 0;
        for (int i9 = 0; i9 < this.zzb; i9++) {
            int i10 = this.zzc[i9] >>> 3;
            zzacw zzacwVar = (zzacw) this.zzd[i9];
            int iZzz = zzadf.zzz(8);
            int iZzz2 = zzadf.zzz(i10) + zzadf.zzz(16);
            int iZzz3 = zzadf.zzz(24);
            int iZzd = zzacwVar.zzd();
            iC += iZzz + iZzz + iZzz2 + r.c(iZzd, iZzd, iZzz3);
        }
        this.zze = iC;
        return iC;
    }

    public final zzagi zzd(zzagi zzagiVar) {
        if (zzagiVar.equals(zza)) {
            return this;
        }
        zzg();
        int i8 = this.zzb + zzagiVar.zzb;
        zzm(i8);
        System.arraycopy(zzagiVar.zzc, 0, this.zzc, this.zzb, zzagiVar.zzb);
        System.arraycopy(zzagiVar.zzd, 0, this.zzd, this.zzb, zzagiVar.zzb);
        this.zzb = i8;
        return this;
    }

    public final void zzg() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    public final void zzi(StringBuilder sb, int i8) {
        for (int i9 = 0; i9 < this.zzb; i9++) {
            zzafd.zzb(sb, i8, String.valueOf(this.zzc[i9] >>> 3), this.zzd[i9]);
        }
    }

    public final void zzj(int i8, Object obj) {
        zzg();
        zzm(this.zzb + 1);
        int[] iArr = this.zzc;
        int i9 = this.zzb;
        iArr[i9] = i8;
        this.zzd[i9] = obj;
        this.zzb = i9 + 1;
    }

    public final void zzk(zzagu zzaguVar) {
        for (int i8 = 0; i8 < this.zzb; i8++) {
            zzaguVar.zzw(this.zzc[i8] >>> 3, this.zzd[i8]);
        }
    }

    public final void zzl(zzagu zzaguVar) {
        if (this.zzb != 0) {
            for (int i8 = 0; i8 < this.zzb; i8++) {
                int i9 = this.zzc[i8];
                Object obj = this.zzd[i8];
                int i10 = i9 & 7;
                int i11 = i9 >>> 3;
                if (i10 == 0) {
                    zzaguVar.zzt(i11, ((Long) obj).longValue());
                } else if (i10 == 1) {
                    zzaguVar.zzm(i11, ((Long) obj).longValue());
                } else if (i10 == 2) {
                    zzaguVar.zzd(i11, (zzacw) obj);
                } else if (i10 == 3) {
                    zzaguVar.zzF(i11);
                    ((zzagi) obj).zzl(zzaguVar);
                    zzaguVar.zzh(i11);
                } else {
                    if (i10 != 5) {
                        throw new RuntimeException(new zzaef("Protocol message tag had invalid wire type."));
                    }
                    zzaguVar.zzk(i11, ((Integer) obj).intValue());
                }
            }
        }
    }

    private zzagi() {
        this(0, new int[8], new Object[8], true);
    }
}
