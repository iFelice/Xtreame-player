package p141s0;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p027d2.v;
import p038e6.a;
import z4.A;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class r extends A {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f29992G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Map f29993H;

    public r(Map map) {
        this.f29993H = map;
    }

    public final double b() {
        Map map = this.f29993H;
        if (map.isEmpty()) {
            return 0.0d;
        }
        Iterator it = map.values().iterator();
        int i8 = 0;
        int i9 = 0;
        while (it.hasNext()) {
            i9++;
            if (((a) it.next()).c()) {
                i8++;
            }
        }
        return (((double) i8) / ((double) i9)) * 100.0d;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        int i8 = this.f29992G;
        Map map = this.f29993H;
        switch (i8) {
            case 0:
                return obj != null && map.containsKey(obj);
            default:
                return map.containsKey(obj);
        }
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        switch (this.f29992G) {
            case 0:
                Iterator it = entrySet().iterator();
                it.getClass();
                if (obj == null) {
                    while (it.hasNext()) {
                        if (((Map.Entry) it.next()).getValue() == null) {
                            return true;
                        }
                    }
                } else {
                    while (it.hasNext()) {
                        if (obj.equals(((Map.Entry) it.next()).getValue())) {
                            return true;
                        }
                    }
                }
                return false;
            default:
                return this.f29993H.containsValue(obj);
        }
    }

    @Override // z4.A, java.util.Map
    public final Set entrySet() {
        switch (this.f29992G) {
            case 0:
                return q0.p(super.entrySet(), new C3192q(0));
            default:
                return super.entrySet();
        }
    }

    @Override // z4.A, java.util.Map
    public final boolean equals(Object obj) {
        switch (this.f29992G) {
            case 0:
                return obj != null && v.l(obj, this);
            default:
                return super.equals(obj);
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int i8 = this.f29992G;
        Map map = this.f29993H;
        switch (i8) {
            case 0:
                if (obj == null) {
                    return null;
                }
                return (List) map.get(obj);
            default:
                return map.get(obj);
        }
    }

    @Override // z4.A, java.util.Map
    public final int hashCode() {
        switch (this.f29992G) {
            case 0:
                return q0.z(entrySet());
            default:
                return super.hashCode();
        }
    }

    @Override // z4.A, java.util.Map
    public final boolean isEmpty() {
        switch (this.f29992G) {
            case 0:
                if (super.isEmpty()) {
                    return true;
                }
                return super.size() == 1 && this.f29993H.containsKey(null);
            default:
                return super.isEmpty();
        }
    }

    @Override // z4.A, java.util.Map
    public final Set keySet() {
        switch (this.f29992G) {
            case 0:
                return q0.p(super.keySet(), new C3192q(1));
            default:
                return super.keySet();
        }
    }

    @Override // z4.A, java.util.Map
    public final int size() {
        switch (this.f29992G) {
            case 0:
                return super.size() - (this.f29993H.containsKey(null) ? 1 : 0);
            default:
                return super.size();
        }
    }
}
