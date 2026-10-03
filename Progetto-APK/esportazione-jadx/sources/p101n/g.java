package p101n;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class g implements Iterable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public c f27300G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public c f27301H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final WeakHashMap f27302I = new WeakHashMap();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f27303J = 0;

    public c b(Object obj) {
        c cVar = this.f27300G;
        while (cVar != null && !cVar.f27291G.equals(obj)) {
            cVar = cVar.f27293I;
        }
        return cVar;
    }

    public Object c(Object obj) {
        c cVarB = b(obj);
        if (cVarB == null) {
            return null;
        }
        this.f27303J--;
        WeakHashMap weakHashMap = this.f27302I;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((f) it.next()).a(cVarB);
            }
        }
        c cVar = cVarB.f27294J;
        if (cVar != null) {
            cVar.f27293I = cVarB.f27293I;
        } else {
            this.f27300G = cVarB.f27293I;
        }
        c cVar2 = cVarB.f27293I;
        if (cVar2 != null) {
            cVar2.f27294J = cVar;
        } else {
            this.f27301H = cVar;
        }
        cVarB.f27293I = null;
        cVarB.f27294J = null;
        return cVarB.f27292H;
    }

    public final boolean equals(Object obj) {
        e eVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f27303J != gVar.f27303J) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = gVar.iterator();
        while (true) {
            eVar = (e) it;
            if (!eVar.hasNext()) {
                break;
            }
            e eVar2 = (e) it2;
            if (!eVar2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) eVar.next();
            Object next = eVar2.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return (eVar.hasNext() || ((e) it2).hasNext()) ? false : true;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (true) {
            e eVar = (e) it;
            if (!eVar.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((Map.Entry) eVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        b bVar = new b(this.f27300G, this.f27301H, 0);
        this.f27302I.put(bVar, Boolean.FALSE);
        return bVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            e eVar = (e) it;
            if (!eVar.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) eVar.next()).toString());
            if (eVar.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
