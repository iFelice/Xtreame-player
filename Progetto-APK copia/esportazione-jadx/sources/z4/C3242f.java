package z4;

import com.google.android.gms.internal.ads.AbstractC1091bB;
import com.google.android.gms.internal.ads.Qz;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: z4.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3242f extends AbstractC1091bB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Map f31849H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AbstractC3239c f31850I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3242f(AbstractC3239c abstractC3239c, Map map) {
        super(1);
        this.f31850I = abstractC3239c;
        map.getClass();
        this.f31849H = map;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1091bB, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        Qz qz = (Qz) iterator();
        while (qz.hasNext()) {
            qz.next();
            qz.remove();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f31849H.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.f31849H.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return this == obj || this.f31849H.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f31849H.keySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f31849H.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new Qz(this, this.f31849H.entrySet().iterator(), 4);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1091bB, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Collection collection = (Collection) this.f31849H.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f31850I.f31838K -= size;
            if (size > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f31849H.size();
    }
}
