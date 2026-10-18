package p101n;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a extends g {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final HashMap f27289K = new HashMap();

    @Override // p101n.g
    public final c b(Object obj) {
        return (c) this.f27289K.get(obj);
    }

    @Override // p101n.g
    public final Object c(Object obj) {
        Object objC = super.c(obj);
        this.f27289K.remove(obj);
        return objC;
    }

    public final Object i(Object obj, Object obj2) {
        c cVarB = b(obj);
        if (cVarB != null) {
            return cVarB.f27292H;
        }
        HashMap map = this.f27289K;
        c cVar = new c(obj, obj2);
        this.f27303J++;
        c cVar2 = this.f27301H;
        if (cVar2 == null) {
            this.f27300G = cVar;
            this.f27301H = cVar;
        } else {
            cVar2.f27293I = cVar;
            cVar.f27294J = cVar2;
            this.f27301H = cVar;
        }
        map.put(obj, cVar);
        return null;
    }
}
