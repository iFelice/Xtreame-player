package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2229xA implements Map, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public transient RA f21848G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient SA f21849H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient TA f21850I;

    public static UA a(HashMap map) {
        Set<Map.Entry> setEntrySet = map.entrySet();
        boolean z7 = setEntrySet instanceof Collection;
        C1294f8 c1294f8 = new C1294f8(z7 ? setEntrySet.size() : 4);
        if (z7) {
            int size = setEntrySet.size() + c1294f8.f18726H;
            Object[] objArr = (Object[]) c1294f8.f18727I;
            int length = objArr.length;
            int i8 = size + size;
            if (i8 > length) {
                c1294f8.f18727I = Arrays.copyOf(objArr, AbstractC1762oA.e(length, i8));
            }
        }
        for (Map.Entry entry : setEntrySet) {
            c1294f8.a(entry.getKey(), entry.getValue());
        }
        return c1294f8.f();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AbstractC2333zA entrySet() {
        RA ra = this.f21848G;
        if (ra != null) {
            return ra;
        }
        UA ua = (UA) this;
        RA ra2 = new RA(ua, ua.f16805K, ua.f16806L);
        this.f21848G = ra2;
        return ra2;
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
        TA ta = this.f21850I;
        if (ta == null) {
            UA ua = (UA) this;
            TA ta2 = new TA(ua.f16805K, 1, ua.f16806L);
            this.f21850I = ta2;
            ta = ta2;
        }
        return ta.contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return p113o3.r.z(obj, this);
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
        return AbstractC2987b.Y(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return ((UA) this).size() == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        SA sa = this.f21849H;
        if (sa != null) {
            return sa;
        }
        UA ua = (UA) this;
        SA sa2 = new SA(ua, new TA(ua.f16805K, 0, ua.f16806L));
        this.f21849H = sa2;
        return sa2;
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
        int i8 = ((UA) this).f16806L;
        p113o3.r.q(i8, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) i8) * 8, 1073741824L));
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
        TA ta = this.f21850I;
        if (ta != null) {
            return ta;
        }
        UA ua = (UA) this;
        TA ta2 = new TA(ua.f16805K, 1, ua.f16806L);
        this.f21850I = ta2;
        return ta2;
    }
}
