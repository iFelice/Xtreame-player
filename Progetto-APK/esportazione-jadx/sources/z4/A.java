package z4;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class A implements Map {
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        return ((p141s0.r) this).f29993H.toString();
    }

    @Override // java.util.Map
    public final void clear() {
        ((p141s0.r) this).f29993H.clear();
    }

    @Override // java.util.Map
    public Set entrySet() {
        return ((p141s0.r) this).f29993H.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return obj == this || ((p141s0.r) this).f29993H.equals(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return ((p141s0.r) this).f29993H.hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return ((p141s0.r) this).f29993H.isEmpty();
    }

    @Override // java.util.Map
    public Set keySet() {
        return ((p141s0.r) this).f29993H.keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return ((p141s0.r) this).f29993H.put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        ((p141s0.r) this).f29993H.putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return ((p141s0.r) this).f29993H.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return ((p141s0.r) this).f29993H.size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return ((p141s0.r) this).f29993H.values();
    }
}
