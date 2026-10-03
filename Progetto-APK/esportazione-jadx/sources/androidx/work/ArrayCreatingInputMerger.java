package androidx.work;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p027d2.e;
import p027d2.h;
import p032e0.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class ArrayCreatingInputMerger extends h {
    @Override // p027d2.h
    public final e a(ArrayList arrayList) throws Throwable {
        Object objNewInstance;
        u uVar = new u(3);
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Map mapUnmodifiableMap = Collections.unmodifiableMap(((e) it.next()).f24630a);
            q0.g(mapUnmodifiableMap, "input.keyValueMap");
            for (Map.Entry entry : mapUnmodifiableMap.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value != null ? value.getClass() : String.class;
                Object obj = map.get(str);
                q0.g(str, "key");
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    if (q0.c(cls2, cls)) {
                        q0.g(value, "value");
                        int length = Array.getLength(obj);
                        int length2 = Array.getLength(value);
                        Class<?> componentType = obj.getClass().getComponentType();
                        q0.e(componentType);
                        Object objNewInstance2 = Array.newInstance(componentType, length + length2);
                        System.arraycopy(obj, 0, objNewInstance2, 0, length);
                        System.arraycopy(value, 0, objNewInstance2, length, length2);
                        q0.g(objNewInstance2, "newArray");
                        value = objNewInstance2;
                    } else {
                        if (!q0.c(cls2.getComponentType(), cls)) {
                            throw new IllegalArgumentException();
                        }
                        int length3 = Array.getLength(obj);
                        objNewInstance = Array.newInstance(cls, length3 + 1);
                        System.arraycopy(obj, 0, objNewInstance, 0, length3);
                        Array.set(objNewInstance, length3, value);
                        q0.g(objNewInstance, "newArray");
                        value = objNewInstance;
                    }
                } else if (!cls.isArray()) {
                    objNewInstance = Array.newInstance(cls, 1);
                    Array.set(objNewInstance, 0, value);
                    q0.g(objNewInstance, "newArray");
                    value = objNewInstance;
                }
                q0.g(value, "if (existingValue == nul…      }\n                }");
                map.put(str, value);
            }
        }
        uVar.c(map);
        e eVar = new e(uVar.f24776a);
        e.c(eVar);
        return eVar;
    }
}
