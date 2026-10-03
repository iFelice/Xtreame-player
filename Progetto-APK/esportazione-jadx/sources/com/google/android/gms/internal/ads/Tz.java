package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public final class Tz extends Wz implements NavigableMap {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ Mz f16768N;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Tz(Mz mz, NavigableMap navigableMap) {
        super(mz, navigableMap);
        this.f16768N = mz;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry entryCeilingEntry = ((NavigableMap) ((SortedMap) this.f16386J)).ceilingEntry(obj);
        if (entryCeilingEntry == null) {
            return null;
        }
        return f(entryCeilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f16386J)).ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new Tz(this.f16768N, ((NavigableMap) ((SortedMap) this.f16386J)).descendingMap());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry entryFirstEntry = ((NavigableMap) ((SortedMap) this.f16386J)).firstEntry();
        if (entryFirstEntry == null) {
            return null;
        }
        return f(entryFirstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry entryFloorEntry = ((NavigableMap) ((SortedMap) this.f16386J)).floorEntry(obj);
        if (entryFloorEntry == null) {
            return null;
        }
        return f(entryFloorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f16386J)).floorKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.Wz
    public final /* synthetic */ SortedMap g() {
        return (NavigableMap) ((SortedMap) this.f16386J);
    }

    @Override // com.google.android.gms.internal.ads.Wz
    public final SortedSet h() {
        return new Uz(this.f16768N, (NavigableMap) ((SortedMap) this.f16386J));
    }

    @Override // com.google.android.gms.internal.ads.Wz, java.util.SortedMap, java.util.NavigableMap
    public final /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry entryHigherEntry = ((NavigableMap) ((SortedMap) this.f16386J)).higherEntry(obj);
        if (entryHigherEntry == null) {
            return null;
        }
        return f(entryHigherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f16386J)).higherKey(obj);
    }

    @Override // com.google.android.gms.internal.ads.Wz
    /* JADX INFO: renamed from: i */
    public final /* synthetic */ SortedSet keySet() {
        return (NavigableSet) super.keySet();
    }

    public final C1866qA j(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        List list = (List) ((LA) this.f16768N).f14479L.zza();
        list.addAll((Collection) entry.getValue());
        it.remove();
        return new C1866qA(entry.getKey(), Collections.unmodifiableList(list));
    }

    @Override // com.google.android.gms.internal.ads.Wz, com.google.android.gms.internal.ads.Rz, java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry entryLastEntry = ((NavigableMap) ((SortedMap) this.f16386J)).lastEntry();
        if (entryLastEntry == null) {
            return null;
        }
        return f(entryLastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry entryLowerEntry = ((NavigableMap) ((SortedMap) this.f16386J)).lowerEntry(obj);
        if (entryLowerEntry == null) {
            return null;
        }
        return f(entryLowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return ((NavigableMap) ((SortedMap) this.f16386J)).lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return j(entrySet().iterator());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return j(((Rz) descendingMap()).entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.Wz, java.util.SortedMap, java.util.NavigableMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // com.google.android.gms.internal.ads.Wz, java.util.SortedMap, java.util.NavigableMap
    public final /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z7) {
        return new Tz(this.f16768N, ((NavigableMap) ((SortedMap) this.f16386J)).headMap(obj, z7));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z7, Object obj2, boolean z8) {
        return new Tz(this.f16768N, ((NavigableMap) ((SortedMap) this.f16386J)).subMap(obj, z7, obj2, z8));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z7) {
        return new Tz(this.f16768N, ((NavigableMap) ((SortedMap) this.f16386J)).tailMap(obj, z7));
    }
}
