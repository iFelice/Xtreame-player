package p132r;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class f extends m implements Map {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public a f29657J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public c f29658K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public e f29659L;

    @Override // p132r.m, java.util.Map
    public final boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // p132r.m, java.util.Map
    public final boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        a aVar = this.f29657J;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(0, this);
        this.f29657J = aVar2;
        return aVar2;
    }

    @Override // p132r.m, java.util.Map
    public final Object get(Object obj) {
        return super.get(obj);
    }

    public final boolean k(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map
    public final Set keySet() {
        c cVar = this.f29658K;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c(this);
        this.f29658K = cVar2;
        return cVar2;
    }

    public final boolean l(Collection collection) {
        int i8 = this.f29684I;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        return i8 != this.f29684I;
    }

    public final boolean m(Collection collection) {
        int i8 = this.f29684I;
        for (int i9 = i8 - 1; i9 >= 0; i9--) {
            if (!collection.contains(f(i9))) {
                h(i9);
            }
        }
        return i8 != this.f29684I;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        b(map.size() + this.f29684I);
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // p132r.m, java.util.Map
    public final Object remove(Object obj) {
        return super.remove(obj);
    }

    @Override // java.util.Map
    public final Collection values() {
        e eVar = this.f29659L;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(this);
        this.f29659L = eVar2;
        return eVar2;
    }
}
