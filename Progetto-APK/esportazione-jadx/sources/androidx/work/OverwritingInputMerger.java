package androidx.work;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import p027d2.e;
import p027d2.h;
import p032e0.u;

/* JADX INFO: loaded from: classes.dex */
public final class OverwritingInputMerger extends h {
    @Override // p027d2.h
    public final e a(ArrayList arrayList) throws Throwable {
        u uVar = new u(3);
        HashMap map = new HashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            map.putAll(Collections.unmodifiableMap(((e) it.next()).f24630a));
        }
        uVar.c(map);
        e eVar = new e(uVar.f24776a);
        e.c(eVar);
        return eVar;
    }
}
