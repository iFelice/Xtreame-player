package p035e3;

import R2.c;
import android.util.SparseArray;
import java.util.HashMap;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SparseArray f24862a = new SparseArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f24863b;

    static {
        HashMap map = new HashMap();
        f24863b = map;
        map.put(c.f6285G, 0);
        map.put(c.f6286H, 1);
        map.put(c.f6287I, 2);
        for (c cVar : map.keySet()) {
            f24862a.append(((Integer) f24863b.get(cVar)).intValue(), cVar);
        }
    }

    public static int a(c cVar) {
        Integer num = (Integer) f24863b.get(cVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + cVar);
    }

    public static c b(int i8) {
        c cVar = (c) f24862a.get(i8);
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalArgumentException(r.f("Unknown Priority for value ", i8));
    }
}
