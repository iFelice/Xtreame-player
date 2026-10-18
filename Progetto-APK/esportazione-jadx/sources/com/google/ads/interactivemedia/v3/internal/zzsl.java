package com.google.ads.interactivemedia.v3.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class zzsl extends zzrv {
    static final zzsl zzc;
    final transient zzrm zzd;

    static {
        int i8 = zzrm.zzd;
        zzc = new zzsl(zzse.zza, zzsb.zza);
    }

    public zzsl(zzrm zzrmVar, Comparator comparator) {
        super(comparator);
        this.zzd = zzrmVar;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, java.util.NavigableSet
    public final Object ceiling(Object obj) {
        zzrm zzrmVar = this.zzd;
        int iZzv = zzv(obj, true);
        if (iZzv == zzrmVar.size()) {
            return null;
        }
        return this.zzd.get(iZzv);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.zzd, obj, ((zzrv) this).zza) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof zzsa) {
            collection = ((zzsa) collection).zza();
        }
        if (!zzsr.zza(((zzrv) this).zza, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        zzst zzstVarListIterator = this.zzd.listIterator(0);
        Iterator it = collection.iterator();
        if (!zzstVarListIterator.hasNext()) {
            return false;
        }
        Object next = it.next();
        E next2 = zzstVarListIterator.next();
        while (true) {
            try {
                int iCompare = ((zzrv) this).zza.compare(next2, next);
                if (iCompare < 0) {
                    if (!zzstVarListIterator.hasNext()) {
                        return false;
                    }
                    next2 = zzstVarListIterator.next();
                } else {
                    if (iCompare != 0) {
                        return false;
                    }
                    if (!it.hasNext()) {
                        return true;
                    }
                    next = it.next();
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (this.zzd.size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!zzsr.zza(((zzrv) this).zza, set)) {
            return containsAll(set);
        }
        Iterator it = set.iterator();
        try {
            zzst zzstVarListIterator = this.zzd.listIterator(0);
            while (zzstVarListIterator.hasNext()) {
                E next = zzstVarListIterator.next();
                Object next2 = it.next();
                if (next2 == null || ((zzrv) this).zza.compare(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, java.util.SortedSet
    public final Object first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.zzd.get(0);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, java.util.NavigableSet
    public final Object floor(Object obj) {
        int iZzu = zzu(obj, true) - 1;
        if (iZzu == -1) {
            return null;
        }
        return this.zzd.get(iZzu);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, java.util.NavigableSet
    public final Object higher(Object obj) {
        zzrm zzrmVar = this.zzd;
        int iZzv = zzv(obj, false);
        if (iZzv == zzrmVar.size()) {
            return null;
        }
        return this.zzd.get(iZzv);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.zzd.listIterator(0);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        zzrm zzrmVar = this.zzd;
        return zzrmVar.get(zzrmVar.size() - 1);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, java.util.NavigableSet
    public final Object lower(Object obj) {
        int iZzu = zzu(obj, false) - 1;
        if (iZzu == -1) {
            return null;
        }
        return this.zzd.get(iZzu);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zzd.size();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zza(Object[] objArr, int i8) {
        return this.zzd.zza(objArr, 0);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zzb() {
        return this.zzd.zzb();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final int zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri
    public final zzrm zzd() {
        return this.zzd;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, com.google.ads.interactivemedia.v3.internal.zzrr, com.google.ads.interactivemedia.v3.internal.zzri
    /* JADX INFO: renamed from: zze */
    public final zzss iterator() {
        return this.zzd.listIterator(0);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final boolean zzf() {
        return this.zzd.zzf();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzri
    public final Object[] zzg() {
        return this.zzd.zzg();
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv
    public final zzrv zzh() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(((zzrv) this).zza);
        return isEmpty() ? zzrv.zzs(comparatorReverseOrder) : new zzsl(this.zzd.zzh(), comparatorReverseOrder);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv
    public final zzrv zzo(Object obj, boolean z7) {
        return zzw(0, zzu(obj, z7));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv
    public final zzrv zzq(Object obj, boolean z7, Object obj2, boolean z8) {
        return zzr(obj, z7).zzo(obj2, z8);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv
    public final zzrv zzr(Object obj, boolean z7) {
        return zzw(zzv(obj, z7), this.zzd.size());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrv, java.util.NavigableSet
    /* JADX INFO: renamed from: zzt */
    public final zzss descendingIterator() {
        return this.zzd.zzh().listIterator(0);
    }

    public final int zzu(Object obj, boolean z7) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.zzd, obj, ((zzrv) this).zza);
        if (iBinarySearch >= 0) {
            return z7 ? iBinarySearch + 1 : iBinarySearch;
        }
        return ~iBinarySearch;
    }

    public final int zzv(Object obj, boolean z7) {
        obj.getClass();
        int iBinarySearch = Collections.binarySearch(this.zzd, obj, ((zzrv) this).zza);
        if (iBinarySearch >= 0) {
            return z7 ? iBinarySearch : iBinarySearch + 1;
        }
        return ~iBinarySearch;
    }

    public final zzsl zzw(int i8, int i9) {
        if (i8 == 0) {
            if (i9 == this.zzd.size()) {
                return this;
            }
            i8 = 0;
        }
        if (i8 >= i9) {
            return zzrv.zzs(((zzrv) this).zza);
        }
        zzrm zzrmVar = this.zzd;
        return new zzsl(zzrmVar.subList(i8, i9), ((zzrv) this).zza);
    }
}
