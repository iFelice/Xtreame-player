package p185x6;

import A0.O;
import C6.p;
import N6.w;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements p {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f31223G;

    public /* synthetic */ c(int i8) {
        this.f31223G = i8;
    }

    @Override // C6.p
    public final Object c(Object obj, Object obj2) {
        d dVar;
        switch (this.f31223G) {
            case 0:
                String str = (String) obj;
                h hVar = (h) obj2;
                q0.h(str, "acc");
                q0.h(hVar, "element");
                if (str.length() == 0) {
                    return hVar.toString();
                }
                return str + ", " + hVar;
            case 1:
                j jVar = (j) obj;
                h hVar2 = (h) obj2;
                q0.h(jVar, "acc");
                q0.h(hVar2, "element");
                j jVarO = jVar.O(hVar2.getKey());
                k kVar = k.f31227G;
                if (jVarO == kVar) {
                    return hVar2;
                }
                f fVar = f.f31226G;
                g gVar = (g) jVarO.k(fVar);
                if (gVar == null) {
                    dVar = new d(hVar2, jVarO);
                } else {
                    j jVarO2 = jVarO.O(fVar);
                    if (jVarO2 == kVar) {
                        return new d(gVar, hVar2);
                    }
                    dVar = new d(gVar, new d(hVar2, jVarO2));
                }
                return dVar;
            case 2:
                return ((j) obj).N((h) obj2);
            case 3:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                return bool;
            case 4:
                return obj;
            case 5:
                O.I(obj);
                return null;
            default:
                return (w) obj;
        }
    }
}
