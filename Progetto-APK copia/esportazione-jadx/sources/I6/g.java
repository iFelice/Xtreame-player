package I6;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import p162u6.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g extends p190y4.k {
    public static final void A0(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            p155t6.c cVar = (p155t6.c) it.next();
            linkedHashMap.put(cVar.f30311G, cVar.f30312H);
        }
    }

    public static Map z0(ArrayList arrayList) {
        r rVar = r.f30543G;
        int size = arrayList.size();
        if (size == 0) {
            return rVar;
        }
        if (size != 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(p190y4.k.X(arrayList.size()));
            A0(arrayList, linkedHashMap);
            return linkedHashMap;
        }
        p155t6.c cVar = (p155t6.c) arrayList.get(0);
        q0.h(cVar, "pair");
        Map mapSingletonMap = Collections.singletonMap(cVar.f30311G, cVar.f30312H);
        q0.g(mapSingletonMap, "singletonMap(...)");
        return mapSingletonMap;
    }
}
