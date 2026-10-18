package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class VE extends T.b implements Map {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Map f16986H;

    public VE(Map map) {
        super(3);
        this.f16986H = map;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return obj != null && this.f16986H.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return q(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return AbstractC2987b.u0(this.f16986H.entrySet(), new C2285yE(0));
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj != null && p113o3.r.z(obj, this);
    }

    @Override // java.util.Map
    public final /* synthetic */ Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.f16986H.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return AbstractC2987b.Y(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        Map map = this.f16986H;
        if (map.isEmpty()) {
            return true;
        }
        return map.size() == 1 && map.containsKey(null);
    }

    @Override // java.util.Map
    public final Set keySet() {
        return AbstractC2987b.u0(this.f16986H.keySet(), new C2285yE(1));
    }

    @Override // T.b
    public final /* synthetic */ Object n() {
        return this.f16986H;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public final void clear() {
        this.f16986H.clear();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final void putAll(Map map) {
        this.f16986H.putAll(map);
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return this.f16986H.put(obj, obj2);
    }

    public final boolean q(Object obj) {
        GA ga = new GA(entrySet().iterator());
        Iterator it = ga.f18489G;
        if (obj == null) {
            while (it.hasNext()) {
                if (ga.next() == null) {
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(ga.next())) {
            }
        }
        return false;
        return true;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return this.f16986H.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        Map map = this.f16986H;
        return map.size() - (map.containsKey(null) ? 1 : 0);
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.f16986H.values();
    }
}
