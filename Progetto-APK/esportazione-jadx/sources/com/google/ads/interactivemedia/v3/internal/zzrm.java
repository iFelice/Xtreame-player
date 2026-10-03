package com.google.ads.interactivemedia.v3.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzrm<E> extends zzri<E> implements List<E>, RandomAccess {
    private static final zzst zza = new zzrj(zzse.zza, 0);
    public static final /* synthetic */ int zzd = 0;

    public static zzrm zzj(Object[] objArr, int i8) {
        return i8 == 0 ? zzse.zza : new zzse(objArr, i8);
    }

    public static zzrm zzk(Collection collection) {
        if (!(collection instanceof zzri)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzsc.zzb(array, length);
            return zzj(array, length);
        }
        zzrm zzrmVarZzd = ((zzri) collection).zzd();
        if (!zzrmVarZzd.zzf()) {
            return zzrmVarZzd;
        }
        Object[] array2 = zzrmVarZzd.toArray();
        return zzj(array2, array2.length);
    }

    public static zzrm zzl(Object[] objArr) {
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        zzsc.zzb(objArr2, length);
        return zzj(objArr2, length);
    }

    public static zzrm zzm() {
        return zzse.zza;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i8, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i8, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i8 = 0; i8 < size; i8++) {
                        if (zzqe.zza(get(i8), list.get(i8))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (it.hasNext()) {
                    if (it2.hasNext() && zzqe.zza(it.next(), it2.next())) {
                    }
                }
                if (!it2.hasNext()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i8 = 0; i8 < size; i8++) {
            iHashCode = (iHashCode * 31) + get(i8).hashCode();
        }
        return iHashCode;
    }

    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i8 = 0; i8 < size; i8++) {
            if (obj.equals(get(i8))) {
                return i8;
            }
        }
        return -1;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i8) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i8, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public int zza(Object[] objArr, int i8) {
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            objArr[i9] = get(i9);
        }
        return size;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    @Deprecated
    public final zzrm zzd() {
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    /* JADX INFO: renamed from: zze */
    public final zzss iterator() {
        return listIterator(0);
    }

    public zzrm zzh() {
        return size() <= 1 ? this : new zzrk(this);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public zzrm subList(int i8, int i9) {
        zzqh.zzh(i8, i9, size());
        int i10 = i9 - i8;
        if (i10 == size()) {
            return this;
        }
        return i10 == 0 ? zzse.zza : new zzrl(this, i8, i10);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzst listIterator(int i8) {
        zzqh.zzb(i8, size(), "index");
        return isEmpty() ? zza : new zzrj(this, i8);
    }
}
