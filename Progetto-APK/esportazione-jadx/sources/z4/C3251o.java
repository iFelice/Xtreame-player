package z4;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: z4.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3251o extends AbstractCollection {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f31886G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f31887H;

    public /* synthetic */ C3251o(Object obj, int i8) {
        this.f31886G = i8;
        this.f31887H = obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int i8 = this.f31886G;
        Object obj = this.f31887H;
        switch (i8) {
            case 0:
                ((AbstractC3239c) ((AbstractC3252p) obj)).b();
                break;
            case 1:
                ((AbstractC3255t) obj).clear();
                break;
            default:
                ((Map) obj).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        int i8 = this.f31886G;
        Object obj2 = this.f31887H;
        switch (i8) {
            case 0:
                Iterator it = ((AbstractC3252p) obj2).a().values().iterator();
                while (it.hasNext()) {
                    if (((Collection) it.next()).contains(obj)) {
                        return true;
                    }
                }
                return false;
            case 1:
            default:
                return super.contains(obj);
            case 2:
                return ((Map) obj2).containsValue(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        switch (this.f31886G) {
            case 2:
                return ((Map) this.f31887H).isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int i8 = this.f31886G;
        Object obj = this.f31887H;
        switch (i8) {
            case 0:
                AbstractC3239c abstractC3239c = (AbstractC3239c) ((AbstractC3252p) obj);
                abstractC3239c.getClass();
                return new C3240d(abstractC3239c);
            case 1:
                AbstractC3255t abstractC3255t = (AbstractC3255t) obj;
                Map mapA = abstractC3255t.a();
                return mapA != null ? mapA.values().iterator() : new r(abstractC3255t, 2);
            default:
                return new T(((Map) obj).entrySet().iterator());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.f31886G) {
            case 2:
                try {
                    return super.remove(obj);
                } catch (UnsupportedOperationException unused) {
                    Map map = (Map) this.f31887H;
                    for (Map.Entry entry : map.entrySet()) {
                        if (a7.b.c(obj, entry.getValue())) {
                            map.remove(entry.getKey());
                            return true;
                        }
                    }
                    return false;
                }
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.f31886G) {
            case 2:
                try {
                    collection.getClass();
                    return super.removeAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    Map map = (Map) this.f31887H;
                    for (Map.Entry entry : map.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return map.keySet().removeAll(hashSet);
                }
            default:
                return super.removeAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.f31886G) {
            case 2:
                try {
                    collection.getClass();
                    return super.retainAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    Map map = (Map) this.f31887H;
                    for (Map.Entry entry : map.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return map.keySet().retainAll(hashSet);
                }
            default:
                return super.retainAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i8 = this.f31886G;
        Object obj = this.f31887H;
        switch (i8) {
            case 0:
                return ((AbstractC3239c) ((AbstractC3252p) obj)).f31838K;
            case 1:
                return ((AbstractC3255t) obj).size();
            default:
                return ((Map) obj).size();
        }
    }

    public C3251o(Map map) {
        this.f31886G = 2;
        map.getClass();
        this.f31887H = map;
    }
}
