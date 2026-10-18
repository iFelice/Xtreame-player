package z4;

import com.google.android.gms.internal.ads.Cw;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class J implements Map, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public transient f0 f31808G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient g0 f31809H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient h0 f31810I;

    public static p117p0.C a() {
        return new p117p0.C(4);
    }

    public static J b(Map map) {
        if ((map instanceof J) && !(map instanceof SortedMap)) {
            J j8 = (J) map;
            j8.getClass();
            return j8;
        }
        Set setEntrySet = map.entrySet();
        p117p0.C c8 = new p117p0.C(setEntrySet instanceof Collection ? setEntrySet.size() : 4, 4);
        c8.e(setEntrySet);
        return c8.a();
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final L entrySet() {
        f0 f0Var = this.f31808G;
        if (f0Var != null) {
            return f0Var;
        }
        i0 i0Var = (i0) this;
        f0 f0Var2 = new f0(i0Var, i0Var.f31864K, i0Var.f31865L);
        this.f31808G = f0Var2;
        return f0Var2;
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
        h0 h0Var = this.f31810I;
        if (h0Var == null) {
            i0 i0Var = (i0) this;
            h0 h0Var2 = new h0(i0Var.f31864K, 1, i0Var.f31865L);
            this.f31810I = h0Var2;
            h0Var = h0Var2;
        }
        return h0Var.contains(obj);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final L keySet() {
        g0 g0Var = this.f31809H;
        if (g0Var != null) {
            return g0Var;
        }
        i0 i0Var = (i0) this;
        g0 g0Var2 = new g0(i0Var, new h0(i0Var.f31864K, 0, i0Var.f31865L));
        this.f31809H = g0Var2;
        return g0Var2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return p027d2.v.l(obj, this);
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
        return q0.z(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return ((i0) this).size() == 0;
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
        int i8 = ((i0) this).f31865L;
        Cw.g(i8, "size");
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
        h0 h0Var = this.f31810I;
        if (h0Var != null) {
            return h0Var;
        }
        i0 i0Var = (i0) this;
        h0 h0Var2 = new h0(i0Var.f31864K, 1, i0Var.f31865L);
        this.f31810I = h0Var2;
        return h0Var2;
    }
}
