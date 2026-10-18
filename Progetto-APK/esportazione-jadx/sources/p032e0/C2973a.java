package p032e0;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: e0.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2973a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f24731a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f24732b;

    public C2973a(HashMap map) {
        this.f24732b = map;
        for (Map.Entry entry : map.entrySet()) {
            EnumC2981i enumC2981i = (EnumC2981i) entry.getValue();
            List arrayList = (List) this.f24731a.get(enumC2981i);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f24731a.put(enumC2981i, arrayList);
            }
            arrayList.add((C2974b) entry.getKey());
        }
    }

    public static void a(List list, m mVar, EnumC2981i enumC2981i, Object obj) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C2974b c2974b = (C2974b) list.get(size);
                c2974b.getClass();
                try {
                    int i8 = c2974b.f24733a;
                    Method method = c2974b.f24734b;
                    if (i8 == 0) {
                        method.invoke(obj, new Object[0]);
                    } else if (i8 == 1) {
                        method.invoke(obj, mVar);
                    } else if (i8 == 2) {
                        method.invoke(obj, mVar, enumC2981i);
                    }
                } catch (IllegalAccessException e8) {
                    throw new RuntimeException(e8);
                } catch (InvocationTargetException e9) {
                    throw new RuntimeException("Failed to call observer method", e9.getCause());
                }
            }
        }
    }
}
