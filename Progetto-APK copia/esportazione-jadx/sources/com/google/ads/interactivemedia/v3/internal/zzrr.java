package com.google.ads.interactivemedia.v3.internal;

import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzrr<E> extends zzri<E> implements Set<E> {
    private transient zzrm zza;

    private static zzrr zzh(int i8, Object... objArr) {
        if (i8 == 0) {
            return zzsk.zza;
        }
        if (i8 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzsp(obj);
        }
        int iZzj = zzj(i8);
        Object[] objArr2 = new Object[iZzj];
        int i9 = iZzj - 1;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < i8; i12++) {
            Object obj2 = objArr[i12];
            zzsc.zza(obj2, i12);
            int iHashCode = obj2.hashCode();
            int iZzb = zzrg.zzb(iHashCode);
            while (true) {
                int i13 = iZzb & i9;
                Object obj3 = objArr2[i13];
                if (obj3 == null) {
                    objArr[i11] = obj2;
                    objArr2[i13] = obj2;
                    i10 += iHashCode;
                    i11++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iZzb++;
            }
        }
        Arrays.fill(objArr, i11, i8, (Object) null);
        if (i11 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzsp(obj4);
        }
        if (zzj(i11) < iZzj / 2) {
            return zzh(i11, objArr);
        }
        int length = objArr.length;
        if (i11 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i11);
        }
        return new zzsk(objArr, i10, objArr2, i9, i11);
    }

    public static int zzj(int i8) {
        int iMax = Math.max(i8, 2);
        if (iMax >= 751619276) {
            zzqh.zze(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
        } while (((double) iHighestOneBit) * 0.7d < iMax);
        return iHighestOneBit;
    }

    public static zzrr zzl(Collection collection) {
        if ((collection instanceof zzrr) && !(collection instanceof SortedSet)) {
            zzrr zzrrVar = (zzrr) collection;
            if (!zzrrVar.zzf()) {
                return zzrrVar;
            }
        }
        Object[] array = collection.toArray();
        return zzh(array.length, array);
    }

    public static zzrr zzm(Object obj) {
        return new zzsp(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzrr) && zzi() && ((zzrr) obj).zzi() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size() && containsAll(set)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzso.zza(this);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public zzrm zzd() {
        zzrm zzrmVar = this.zza;
        if (zzrmVar != null) {
            return zzrmVar;
        }
        zzrm zzrmVarZzk = zzk();
        this.zza = zzrmVarZzk;
        return zzrmVarZzk;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
    public abstract zzss iterator();

    public boolean zzi() {
        return false;
    }

    public zzrm zzk() {
        Object[] array = toArray();
        int i8 = zzrm.zzd;
        return zzrm.zzj(array, array.length);
    }
}
