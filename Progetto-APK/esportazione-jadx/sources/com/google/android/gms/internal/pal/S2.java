package com.google.android.gms.internal.pal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class S2 implements Map, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public transient W2 f23652G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient X2 f23653H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient Y2 f23654I;

    @Override // java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final T2 entrySet() {
        W2 w7 = this.f23652G;
        if (w7 != null) {
            return w7;
        }
        Z2 z7 = (Z2) this;
        W2 w8 = new W2(z7, z7.f23716K, z7.f23717L);
        this.f23652G = w8;
        return w8;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        Y2 y7 = this.f23654I;
        if (y7 == null) {
            Z2 z7 = (Z2) this;
            Y2 y8 = new Y2(z7.f23716K, 1, z7.f23717L);
            this.f23654I = y8;
            y7 = y8;
        }
        return y7.contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        Iterator it = ((W2) entrySet()).iterator();
        int iHashCode = 0;
        while (true) {
            L2 l4 = (L2) it;
            if (!l4.hasNext()) {
                return iHashCode;
            }
            Object next = l4.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return ((Z2) this).size() == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        X2 x7 = this.f23653H;
        if (x7 != null) {
            return x7;
        }
        Z2 z7 = (Z2) this;
        X2 x8 = new X2(z7, new Y2(z7.f23716K, 0, z7.f23717L));
        this.f23653H = x8;
        return x8;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = ((Z2) this).size();
        if (size < 0) {
            throw new IllegalArgumentException(p000a.r.f("size cannot be negative but was: ", size));
        }
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append('{');
        boolean z7 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z7) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z7 = false;
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        Y2 y7 = this.f23654I;
        if (y7 != null) {
            return y7;
        }
        Z2 z7 = (Z2) this;
        Y2 y8 = new Y2(z7.f23716K, 1, z7.f23717L);
        this.f23654I = y8;
        return y8;
    }
}
