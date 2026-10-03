package com.google.ads.interactivemedia.v3.internal;

import com.google.android.gms.common.api.d;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class zzafs extends zzacw {
    static final int[] zza = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, d.API_PRIORITY_OTHER};
    private final int zzc;
    private final zzacw zzd;
    private final zzacw zze;
    private final int zzf;
    private final int zzg;

    public static int zzc(int i8) {
        int[] iArr = zza;
        int length = iArr.length;
        return i8 >= 47 ? d.API_PRIORITY_OTHER : iArr[i8];
    }

    public static zzacw zzv(zzacw zzacwVar, zzacw zzacwVar2) {
        if (zzacwVar2.zzd() == 0) {
            return zzacwVar;
        }
        if (zzacwVar.zzd() == 0) {
            return zzacwVar2;
        }
        int iZzd = zzacwVar2.zzd() + zzacwVar.zzd();
        if (iZzd < 128) {
            return zzw(zzacwVar, zzacwVar2);
        }
        if (zzacwVar instanceof zzafs) {
            zzafs zzafsVar = (zzafs) zzacwVar;
            if (zzacwVar2.zzd() + zzafsVar.zze.zzd() < 128) {
                return new zzafs(zzafsVar.zzd, zzw(zzafsVar.zze, zzacwVar2));
            }
            if (zzafsVar.zzd.zzf() > zzafsVar.zze.zzf() && zzafsVar.zzg > zzacwVar2.zzf()) {
                return new zzafs(zzafsVar.zzd, new zzafs(zzafsVar.zze, zzacwVar2));
            }
        }
        return iZzd >= zzc(Math.max(zzacwVar.zzf(), zzacwVar2.zzf()) + 1) ? new zzafs(zzacwVar, zzacwVar2) : zzafo.zza(new zzafo(null), zzacwVar, zzacwVar2);
    }

    private static zzacw zzw(zzacw zzacwVar, zzacw zzacwVar2) {
        int iZzd = zzacwVar.zzd();
        int iZzd2 = zzacwVar2.zzd();
        byte[] bArr = new byte[iZzd + iZzd2];
        zzacwVar.zzs(bArr, 0, 0, iZzd);
        zzacwVar2.zzs(bArr, 0, iZzd, iZzd2);
        return new zzacv(bArr);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzacw)) {
            return false;
        }
        zzacw zzacwVar = (zzacw) obj;
        if (this.zzc != zzacwVar.zzd()) {
            return false;
        }
        if (this.zzc == 0) {
            return true;
        }
        int iZzn = zzn();
        int iZzn2 = zzacwVar.zzn();
        if (iZzn != 0 && iZzn2 != 0 && iZzn != iZzn2) {
            return false;
        }
        zzafp zzafpVar = null;
        zzafq zzafqVar = new zzafq(this, zzafpVar);
        zzacu zzacuVarZza = zzafqVar.next();
        zzafq zzafqVar2 = new zzafq(zzacwVar, zzafpVar);
        zzacu zzacuVarZza2 = zzafqVar2.next();
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int iZzd = zzacuVarZza.zzd() - i8;
            int iZzd2 = zzacuVarZza2.zzd() - i9;
            int iMin = Math.min(iZzd, iZzd2);
            if (!(i8 == 0 ? zzacuVarZza.zzg(zzacuVarZza2, i9, iMin) : zzacuVarZza2.zzg(zzacuVarZza, i8, iMin))) {
                return false;
            }
            i10 += iMin;
            int i11 = this.zzc;
            if (i10 >= i11) {
                if (i10 == i11) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == iZzd) {
                zzacuVarZza = zzafqVar.next();
                i8 = 0;
            } else {
                i8 += iMin;
            }
            if (iMin == iZzd2) {
                zzacuVarZza = zzacuVarZza;
                zzacuVarZza2 = zzafqVar2.next();
                i9 = 0;
            } else {
                zzacuVarZza = zzacuVarZza;
                i9 += iMin;
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzafm(this);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final byte zza(int i8) {
        zzacw.zzr(i8, this.zzc);
        return zzb(i8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final byte zzb(int i8) {
        int i9 = this.zzf;
        return i8 < i9 ? this.zzd.zzb(i8) : this.zze.zzb(i8 - i9);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final int zzd() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final void zze(byte[] bArr, int i8, int i9, int i10) {
        int i11 = i8 + i10;
        int i12 = this.zzf;
        if (i11 <= i12) {
            this.zzd.zze(bArr, i8, i9, i10);
        } else {
            if (i8 >= i12) {
                this.zze.zze(bArr, i8 - i12, i9, i10);
                return;
            }
            int i13 = i12 - i8;
            this.zzd.zze(bArr, i8, i9, i13);
            this.zze.zze(bArr, 0, i9 + i13, i10 - i13);
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final int zzf() {
        return this.zzg;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final boolean zzh() {
        return this.zzc >= zzc(this.zzg);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final int zzi(int i8, int i9, int i10) {
        int i11 = i9 + i10;
        int i12 = this.zzf;
        if (i11 <= i12) {
            return this.zzd.zzi(i8, i9, i10);
        }
        if (i9 >= i12) {
            return this.zze.zzi(i8, i9 - i12, i10);
        }
        int i13 = i12 - i9;
        return this.zze.zzi(this.zzd.zzi(i8, i9, i13), 0, i10 - i13);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final zzacw zzj(int i8, int i9) {
        int iZzm = zzacw.zzm(i8, i9, this.zzc);
        if (iZzm == 0) {
            return zzacw.zzb;
        }
        if (iZzm == this.zzc) {
            return this;
        }
        int i10 = this.zzf;
        if (i9 <= i10) {
            return this.zzd.zzj(i8, i9);
        }
        if (i8 >= i10) {
            return this.zze.zzj(i8 - i10, i9 - i10);
        }
        zzacw zzacwVar = this.zzd;
        return new zzafs(zzacwVar.zzj(i8, zzacwVar.zzd()), this.zze.zzj(0, i9 - this.zzf));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final zzada zzk() {
        throw null;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    public final void zzl(zzaco zzacoVar) {
        this.zzd.zzl(zzacoVar);
        this.zze.zzl(zzacoVar);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzacw
    /* JADX INFO: renamed from: zzo */
    public final zzacs iterator() {
        return new zzafm(this);
    }

    private zzafs(zzacw zzacwVar, zzacw zzacwVar2) {
        this.zzd = zzacwVar;
        this.zze = zzacwVar2;
        int iZzd = zzacwVar.zzd();
        this.zzf = iZzd;
        this.zzc = zzacwVar2.zzd() + iZzd;
        this.zzg = Math.max(zzacwVar.zzf(), zzacwVar2.zzf()) + 1;
    }
}
