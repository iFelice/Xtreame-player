package z4;

import com.google.android.gms.internal.ads.Rz;
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

/* JADX INFO: renamed from: z4.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3243g extends C3246j implements NavigableMap {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ AbstractC3239c f31855N;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3243g(AbstractC3239c abstractC3239c, NavigableMap navigableMap) {
        super(abstractC3239c, navigableMap);
        this.f31855N = abstractC3239c;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        Map.Entry entryCeilingEntry = i().ceilingEntry(obj);
        if (entryCeilingEntry == null) {
            return null;
        }
        return e(entryCeilingEntry);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return i().ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return ((C3243g) descendingMap()).navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return new C3243g(this.f31855N, i().descendingMap());
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        Map.Entry entryFirstEntry = i().firstEntry();
        if (entryFirstEntry == null) {
            return null;
        }
        return e(entryFirstEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        Map.Entry entryFloorEntry = i().floorEntry(obj);
        if (entryFloorEntry == null) {
            return null;
        }
        return e(entryFloorEntry);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return i().floorKey(obj);
    }

    @Override // z4.C3246j
    public final SortedSet g() {
        return new C3244h(this.f31855N, i());
    }

    @Override // z4.C3246j
    /* JADX INFO: renamed from: h */
    public final SortedSet keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // z4.C3246j, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        Map.Entry entryHigherEntry = i().higherEntry(obj);
        if (entryHigherEntry == null) {
            return null;
        }
        return e(entryHigherEntry);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return i().higherKey(obj);
    }

    public final D j(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry entry = (Map.Entry) it.next();
        Collection collectionD = this.f31855N.d();
        collectionD.addAll((Collection) entry.getValue());
        it.remove();
        return new D(entry.getKey(), Collections.unmodifiableList((List) collectionD));
    }

    @Override // z4.C3246j
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final NavigableMap i() {
        return (NavigableMap) ((SortedMap) this.f16386J);
    }

    @Override // z4.C3246j, com.google.android.gms.internal.ads.Rz, java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return (NavigableSet) super.keySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        Map.Entry entryLastEntry = i().lastEntry();
        if (entryLastEntry == null) {
            return null;
        }
        return e(entryLastEntry);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        Map.Entry entryLowerEntry = i().lowerEntry(obj);
        if (entryLowerEntry == null) {
            return null;
        }
        return e(entryLowerEntry);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return i().lowerKey(obj);
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

    @Override // z4.C3246j, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // z4.C3246j, java.util.SortedMap, java.util.NavigableMap
    public final SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z7) {
        return new C3243g(this.f31855N, i().headMap(obj, z7));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z7, Object obj2, boolean z8) {
        return new C3243g(this.f31855N, i().subMap(obj, z7, obj2, z8));
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z7) {
        return new C3243g(this.f31855N, i().tailMap(obj, z7));
    }
}
