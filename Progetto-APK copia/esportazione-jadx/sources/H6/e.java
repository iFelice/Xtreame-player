package H6;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p027d2.v;
import p162u6.q;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e extends f {
    public static List N(c cVar) {
        Iterator it = cVar.iterator();
        if (!it.hasNext()) {
            return q.f30542G;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return v.o(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}
