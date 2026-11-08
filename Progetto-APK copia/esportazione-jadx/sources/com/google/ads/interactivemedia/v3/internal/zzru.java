package com.google.ads.interactivemedia.v3.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzru extends zzrp implements NavigableMap {
    private static final zzru zza;
    private final transient zzsl zzb;
    private final transient zzrm zzc;
    private final transient zzru zzd;

    static {
        zzsl zzslVarZzs = zzrv.zzs(zzsb.zza);
        int i8 = zzrm.zzd;
        zza = new zzru(zzslVarZzs, zzse.zza, null);
    }

    public zzru(zzsl zzslVar, zzrm zzrmVar, zzru zzruVar) {
        this.zzb = zzslVar;
        this.zzc = zzrmVar;
        this.zzd = zzruVar;
    }

    public static zzru zzm(Comparator comparator) {
        if (zzsb.zza.equals(comparator)) {
            return zza;
        }
        zzsl zzslVarZzs = zzrv.zzs(comparator);
        int i8 = zzrm.zzd;
        return new zzru(zzslVarZzs, zzse.zza, null);
    }

    public static zzru zzo() {
        return zza;
    }

    private final zzru zzs(int i8, int i9) {
        if (i8 == 0) {
            if (i9 == this.zzc.size()) {
                return this;
            }
            i8 = 0;
        }
        if (i8 == i9) {
            return zzm(((zzrv) this.zzb).zza);
        }
        return new zzru(this.zzb.zzw(i8, i9), this.zzc.subList(i8, i9), null);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return zzrz.zza(ceilingEntry(obj));
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return ((zzrv) this.zzb).zza;
    }

    @Override // java.util.NavigableMap
    public final /* synthetic */ NavigableSet descendingKeySet() {
        return this.zzb.descendingSet();
    }

    @Override // java.util.NavigableMap
    public final /* bridge */ /* synthetic */ NavigableMap descendingMap() {
        zzru zzruVar = this.zzd;
        if (zzruVar != null) {
            return zzruVar;
        }
        if (!isEmpty()) {
            return new zzru((zzsl) this.zzb.descendingSet(), this.zzc.zzh(), this);
        }
        Comparator comparator = ((zzrv) this.zzb).zza;
        return zzm((comparator instanceof zzsd ? (zzsd) comparator : new zzqu(comparator)).zza());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp, java.util.Map
    public final /* bridge */ /* synthetic */ Set entrySet() {
        return entrySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) entrySet().zzd().get(0);
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return this.zzb.first();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return zzrz.zza(floorEntry(obj));
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0005  */
    @Override // com.google.ads.interactivemedia.v3.internal.zzrp, java.util.Map
    public final Object get(Object obj) {
        int iBinarySearch;
        zzsl zzslVar = this.zzb;
        if (obj == null) {
            iBinarySearch = -1;
        } else {
            try {
                iBinarySearch = Collections.binarySearch(zzslVar.zzd, obj, ((zzrv) zzslVar).zza);
                if (iBinarySearch < 0) {
                    iBinarySearch = -1;
                }
            } catch (ClassCastException unused) {
            }
        }
        if (iBinarySearch == -1) {
            return null;
        }
        return this.zzc.get(iBinarySearch);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return zzrz.zza(higherEntry(obj));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp, java.util.Map
    public final /* synthetic */ Set keySet() {
        return this.zzb;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) entrySet().zzd().get(this.zzc.size() - 1);
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return this.zzb.last();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return zzrz.zza(lowerEntry(obj));
    }

    @Override // java.util.NavigableMap
    public final /* synthetic */ NavigableSet navigableKeySet() {
        return this.zzb;
    }

    @Override // java.util.NavigableMap
    @Deprecated
    public final Map.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @Deprecated
    public final Map.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzc.size();
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp, java.util.Map
    public final /* synthetic */ Collection values() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    public final zzri zza() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    /* JADX INFO: renamed from: zzb */
    public final zzri values() {
        return this.zzc;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    public final zzrr zzg() {
        return isEmpty() ? zzsk.zza : new zzrt(this);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    public final zzrr zzh() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    /* JADX INFO: renamed from: zzj */
    public final /* synthetic */ zzrr keySet() {
        return this.zzb;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    public final boolean zzk() {
        return this.zzb.zzd.zzf() || this.zzc.zzf();
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public final zzru headMap(Object obj, boolean z7) {
        obj.getClass();
        return zzs(0, this.zzb.zzu(obj, z7));
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: zzp, reason: merged with bridge method [inline-methods] */
    public final zzru subMap(Object obj, boolean z7, Object obj2, boolean z8) {
        obj.getClass();
        obj2.getClass();
        if (((zzrv) this.zzb).zza.compare(obj, obj2) <= 0) {
            return headMap(obj2, z8).tailMap(obj, z7);
        }
        throw new IllegalArgumentException(zzqm.zzb("expected fromKey <= toKey but %s > %s", obj, obj2));
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: zzq, reason: merged with bridge method [inline-methods] */
    public final zzru tailMap(Object obj, boolean z7) {
        obj.getClass();
        return zzs(this.zzb.zzv(obj, z7), this.zzc.size());
    }
}
