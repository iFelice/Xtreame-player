package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import z4.AbstractC3239c;
import z4.C3241e;
import z4.C3242f;
import z4.C3245i;
import z4.C3249m;
import z4.C3251o;

/* JADX INFO: loaded from: classes.dex */
public class Rz extends AbstractMap {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16383G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient AbstractC1091bB f16384H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient AbstractCollection f16385I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Map f16386J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Serializable f16387K;

    public Rz(AbstractC3239c abstractC3239c, Map map) {
        this.f16387K = abstractC3239c;
        this.f16386J = map;
    }

    public final Set a() {
        AbstractC1091bB abstractC1091bB = this.f16384H;
        if (abstractC1091bB != null) {
            return abstractC1091bB;
        }
        Pz pz = new Pz(this);
        this.f16384H = pz;
        return pz;
    }

    public final Set b() {
        AbstractC1091bB abstractC1091bB = this.f16384H;
        if (abstractC1091bB != null) {
            return abstractC1091bB;
        }
        C3241e c3241e = new C3241e(this);
        this.f16384H = c3241e;
        return c3241e;
    }

    public final Collection c() {
        AbstractCollection abstractCollection = this.f16385I;
        if (abstractCollection != null) {
            return abstractCollection;
        }
        C1141cA c1141cA = new C1141cA(this);
        this.f16385I = c1141cA;
        return c1141cA;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        int i8 = this.f16383G;
        Map map = this.f16386J;
        Serializable serializable = this.f16387K;
        switch (i8) {
            case 0:
                Mz mz = (Mz) serializable;
                if (map != mz.f14834J) {
                    Qz qz = new Qz(this);
                    while (qz.hasNext()) {
                        qz.next();
                        qz.remove();
                    }
                } else {
                    mz.c();
                }
                break;
            default:
                AbstractC3239c abstractC3239c = (AbstractC3239c) serializable;
                if (map != abstractC3239c.f31837J) {
                    Qz qz2 = new Qz(this, 0);
                    while (qz2.hasNext()) {
                        qz2.next();
                        qz2.remove();
                    }
                } else {
                    abstractC3239c.b();
                }
                break;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        int i8 = this.f16383G;
        Map map = this.f16386J;
        switch (i8) {
            case 0:
                map.getClass();
                try {
                    return map.containsKey(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            default:
                map.getClass();
                try {
                    return map.containsKey(obj);
                } catch (ClassCastException | NullPointerException unused2) {
                    return false;
                }
        }
    }

    public final Collection d() {
        AbstractCollection abstractCollection = this.f16385I;
        if (abstractCollection != null) {
            return abstractCollection;
        }
        C3251o c3251o = new C3251o(this);
        this.f16385I = c3251o;
        return c3251o;
    }

    public final z4.D e(Map.Entry entry) {
        Object key = entry.getKey();
        AbstractC3239c abstractC3239c = (AbstractC3239c) this.f16387K;
        Collection collection = (Collection) entry.getValue();
        abstractC3239c.getClass();
        List list = (List) collection;
        return new z4.D(key, list instanceof RandomAccess ? new C3245i(abstractC3239c, key, list, null) : new C3249m(abstractC3239c, key, list, null));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Set entrySet() {
        switch (this.f16383G) {
            case 0:
                return a();
            default:
                return b();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        int i8 = this.f16383G;
        Map map = this.f16386J;
        switch (i8) {
            case 0:
                return this == obj || map.equals(obj);
            default:
                return this == obj || map.equals(obj);
        }
    }

    public final C1866qA f(Map.Entry entry) {
        Object key = entry.getKey();
        Collection collection = (Collection) entry.getValue();
        Mz mz = (Mz) this.f16387K;
        mz.getClass();
        List list = (List) collection;
        return new C1866qA(key, list instanceof RandomAccess ? new Vz(mz, key, list, null) : new C1038aA(mz, key, list, null));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        Object obj3;
        int i8 = this.f16383G;
        Serializable serializable = this.f16387K;
        Map map = this.f16386J;
        switch (i8) {
            case 0:
                map.getClass();
                try {
                    obj2 = map.get(obj);
                    break;
                } catch (ClassCastException | NullPointerException unused) {
                    obj2 = null;
                }
                Collection collection = (Collection) obj2;
                if (collection == null) {
                    return null;
                }
                Mz mz = (Mz) serializable;
                mz.getClass();
                List list = (List) collection;
                return list instanceof RandomAccess ? new Vz(mz, obj, list, null) : new C1038aA(mz, obj, list, null);
            default:
                map.getClass();
                try {
                    obj3 = map.get(obj);
                    break;
                } catch (ClassCastException | NullPointerException unused2) {
                    obj3 = null;
                }
                Collection collection2 = (Collection) obj3;
                if (collection2 == null) {
                    return null;
                }
                AbstractC3239c abstractC3239c = (AbstractC3239c) serializable;
                abstractC3239c.getClass();
                List list2 = (List) collection2;
                return list2 instanceof RandomAccess ? new C3245i(abstractC3239c, obj, list2, null) : new C3249m(abstractC3239c, obj, list2, null);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i8 = this.f16383G;
        Map map = this.f16386J;
        switch (i8) {
            case 0:
                return map.hashCode();
            default:
                return map.hashCode();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        Sz xz;
        int i8 = this.f16383G;
        Serializable serializable = this.f16387K;
        switch (i8) {
            case 0:
                Mz mz = (Mz) serializable;
                Sz sz = mz.f18301G;
                if (sz == null) {
                    LA la = (LA) mz;
                    Map map = la.f14834J;
                    if (map instanceof NavigableMap) {
                        xz = new Uz(la, (NavigableMap) map);
                    } else {
                        xz = map instanceof SortedMap ? new Xz(la, (SortedMap) map) : new Sz(la, map);
                    }
                    sz = xz;
                    mz.f18301G = sz;
                }
                return sz;
            default:
                AbstractC3239c abstractC3239c = (AbstractC3239c) serializable;
                Set set = abstractC3239c.f31890G;
                if (set != null) {
                    return set;
                }
                C3242f c3242fE = abstractC3239c.e();
                abstractC3239c.f31890G = c3242fE;
                return c3242fE;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        int i8 = this.f16383G;
        Serializable serializable = this.f16387K;
        Map map = this.f16386J;
        switch (i8) {
            case 0:
                Collection collection = (Collection) map.remove(obj);
                if (collection == null) {
                    return null;
                }
                Mz mz = (Mz) serializable;
                List list = (List) ((LA) mz).f14479L.zza();
                list.addAll(collection);
                mz.f14835K -= collection.size();
                collection.clear();
                return list;
            default:
                Collection collection2 = (Collection) map.remove(obj);
                if (collection2 == null) {
                    return null;
                }
                AbstractC3239c abstractC3239c = (AbstractC3239c) serializable;
                Collection collectionD = abstractC3239c.d();
                collectionD.addAll(collection2);
                abstractC3239c.f31838K -= collection2.size();
                collection2.clear();
                return collectionD;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        int i8 = this.f16383G;
        Map map = this.f16386J;
        switch (i8) {
            case 0:
                break;
        }
        return map.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        int i8 = this.f16383G;
        Map map = this.f16386J;
        switch (i8) {
            case 0:
                break;
        }
        return map.toString();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Collection values() {
        switch (this.f16383G) {
            case 0:
                return c();
            default:
                return d();
        }
    }

    public Rz(Mz mz, Map map) {
        this.f16387K = mz;
        this.f16386J = map;
    }
}
