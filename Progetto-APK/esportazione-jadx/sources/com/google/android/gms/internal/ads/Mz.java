package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class Mz extends AbstractC1193dA implements Serializable {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Map f14834J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public transient int f14835K;

    public Mz(Map map) {
        if (!map.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.f14834J = map;
    }

    public final void c() {
        Map map = this.f14834J;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.f14835K = 0;
    }

    public final boolean d(Double d6, Integer num) {
        Map map = this.f14834J;
        Collection collection = (Collection) map.get(d6);
        if (collection != null) {
            if (!collection.add(num)) {
                return false;
            }
            this.f14835K++;
            return true;
        }
        List list = (List) ((LA) this).f14479L.zza();
        if (!list.add(num)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f14835K++;
        map.put(d6, list);
        return true;
    }
}
