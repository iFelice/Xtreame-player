package z4;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: renamed from: z4.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3247k extends C3242f implements SortedSet {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ AbstractC3239c f31875J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3247k(AbstractC3239c abstractC3239c, SortedMap sortedMap) {
        super(abstractC3239c, sortedMap);
        this.f31875J = abstractC3239c;
    }

    public SortedMap b() {
        return (SortedMap) this.f31849H;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return b().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return b().firstKey();
    }

    public SortedSet headSet(Object obj) {
        return new C3247k(this.f31875J, b().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return b().lastKey();
    }

    public SortedSet subSet(Object obj, Object obj2) {
        return new C3247k(this.f31875J, b().subMap(obj, obj2));
    }

    public SortedSet tailSet(Object obj) {
        return new C3247k(this.f31875J, b().tailMap(obj));
    }
}
