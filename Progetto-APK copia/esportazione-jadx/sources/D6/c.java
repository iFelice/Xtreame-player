package D6;

import C6.n;
import C6.o;
import C6.p;
import C6.q;
import C6.r;
import C6.s;
import C6.t;
import C6.u;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p027d2.v;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements G6.b, b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map f2428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f2429c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f2430a;

    static {
        int i8 = 0;
        List listP = v.p(C6.a.class, C6.l.class, p.class, q.class, U1.b.class, r.class, s.class, t.class, u.class, C6.v.class, C6.b.class, C6.c.class, C6.d.class, C6.e.class, C6.f.class, C6.g.class, C6.h.class, C6.i.class, C6.j.class, C6.k.class, C6.m.class, n.class, o.class);
        ArrayList arrayList = new ArrayList(p162u6.k.v(listP));
        for (Object obj : listP) {
            int i9 = i8 + 1;
            if (i8 < 0) {
                v.u();
                throw null;
            }
            arrayList.add(new p155t6.c((Class) obj, Integer.valueOf(i8)));
            i8 = i9;
        }
        f2428b = I6.g.z0(arrayList);
        HashMap mapM = p000a.r.m("boolean", "kotlin.Boolean", "char", "kotlin.Char");
        mapM.put("byte", "kotlin.Byte");
        mapM.put("short", "kotlin.Short");
        mapM.put("int", "kotlin.Int");
        mapM.put("float", "kotlin.Float");
        mapM.put("long", "kotlin.Long");
        mapM.put("double", "kotlin.Double");
        HashMap map = new HashMap();
        map.put("java.lang.Boolean", "kotlin.Boolean");
        map.put("java.lang.Character", "kotlin.Char");
        map.put("java.lang.Byte", "kotlin.Byte");
        map.put("java.lang.Short", "kotlin.Short");
        map.put("java.lang.Integer", "kotlin.Int");
        map.put("java.lang.Float", "kotlin.Float");
        map.put("java.lang.Long", "kotlin.Long");
        map.put("java.lang.Double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Object", "kotlin.Any");
        map2.put("java.lang.String", "kotlin.String");
        map2.put("java.lang.CharSequence", "kotlin.CharSequence");
        map2.put("java.lang.Throwable", "kotlin.Throwable");
        map2.put("java.lang.Cloneable", "kotlin.Cloneable");
        map2.put("java.lang.Number", "kotlin.Number");
        map2.put("java.lang.Comparable", "kotlin.Comparable");
        map2.put("java.lang.Enum", "kotlin.Enum");
        map2.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map2.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map2.put("java.util.Iterator", "kotlin.collections.Iterator");
        map2.put("java.util.Collection", "kotlin.collections.Collection");
        map2.put("java.util.List", "kotlin.collections.List");
        map2.put("java.util.Set", "kotlin.collections.Set");
        map2.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map2.put("java.util.Map", "kotlin.collections.Map");
        map2.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map2.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map2.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map2.putAll(mapM);
        map2.putAll(map);
        Collection<String> collectionValues = mapM.values();
        q0.g(collectionValues, "<get-values>(...)");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            q0.e(str);
            sb.append(I6.k.W0(str));
            sb.append("CompanionObject");
            map2.put(sb.toString(), str.concat(".Companion"));
        }
        for (Map.Entry entry : f2428b.entrySet()) {
            Class cls = (Class) entry.getKey();
            int iIntValue = ((Number) entry.getValue()).intValue();
            map2.put(cls.getName(), "kotlin.Function" + iIntValue);
        }
        f2429c = map2;
        LinkedHashMap linkedHashMap = new LinkedHashMap(p190y4.k.X(map2.size()));
        for (Map.Entry entry2 : map2.entrySet()) {
            Object key = entry2.getKey();
            String str2 = (String) entry2.getValue();
            q0.e(str2);
            linkedHashMap.put(key, I6.k.W0(str2));
        }
    }

    public c(Class cls) {
        q0.h(cls, "jClass");
        this.f2430a = cls;
    }

    @Override // D6.b
    public final Class a() {
        return this.f2430a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && q0.c(q0.r(this), q0.r((G6.b) obj));
    }

    public final int hashCode() {
        return q0.r(this).hashCode();
    }

    public final String toString() {
        return this.f2430a + " (Kotlin reflection is not available)";
    }
}
