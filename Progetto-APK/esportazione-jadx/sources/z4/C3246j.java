package z4;

import com.google.android.gms.internal.ads.Rz;
import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: renamed from: z4.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3246j extends Rz implements SortedMap {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public SortedSet f31866L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ AbstractC3239c f31867M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3246j(AbstractC3239c abstractC3239c, SortedMap sortedMap) {
        super(abstractC3239c, sortedMap);
        this.f31867M = abstractC3239c;
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return i().comparator();
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return i().firstKey();
    }

    public SortedSet g() {
        return new C3247k(this.f31867M, i());
    }

    @Override // com.google.android.gms.internal.ads.Rz, java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public SortedSet keySet() {
        SortedSet sortedSet = this.f31866L;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet sortedSetG = g();
        this.f31866L = sortedSetG;
        return sortedSetG;
    }

    public SortedMap headMap(Object obj) {
        return new C3246j(this.f31867M, i().headMap(obj));
    }

    public SortedMap i() {
        return (SortedMap) this.f16386J;
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return i().lastKey();
    }

    public SortedMap subMap(Object obj, Object obj2) {
        return new C3246j(this.f31867M, i().subMap(obj, obj2));
    }

    public SortedMap tailMap(Object obj) {
        return new C3246j(this.f31867M, i().tailMap(obj));
    }
}
