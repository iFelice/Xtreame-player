package p138r5;

import java.util.List;
import java.util.Map;
import p096m2.l;
import p130q5.c;
import p130q5.e;
import p130q5.i;
import p130q5.k;
import p130q5.m;
import p130q5.n;
import p130q5.o;
import p130q5.p;
import p154t5.a;
import p176w5.d;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements k {
    @Override // p130q5.k
    public final m b(l lVar) {
        return c(lVar, null);
    }

    @Override // p130q5.k
    public final m c(l lVar, Map map) throws i, e {
        o[] oVarArr;
        o[] oVarArr2;
        e eVar;
        p pVar;
        a aVar = new a(lVar.i());
        d dVarA = null;
        try {
            a aVarA = aVar.a(false);
            oVarArr = (o[]) aVarA.f22391I;
            try {
                oVarArr2 = oVarArr;
                eVar = null;
                dVarA = new p146s5.a().a(aVarA);
                e = null;
            } catch (e e8) {
                e = e8;
                oVarArr2 = oVarArr;
                eVar = e;
                e = null;
            } catch (i e9) {
                e = e9;
                oVarArr2 = oVarArr;
                eVar = null;
            }
        } catch (e e10) {
            e = e10;
            oVarArr = null;
        } catch (i e11) {
            e = e11;
            oVarArr = null;
        }
        if (dVarA == null) {
            try {
                a aVarA2 = aVar.a(true);
                oVarArr2 = (o[]) aVarA2.f22391I;
                dVarA = new p146s5.a().a(aVarA2);
            } catch (e | i e12) {
                if (e != null) {
                    throw e;
                }
                if (eVar != null) {
                    throw eVar;
                }
                throw e12;
            }
        }
        o[] oVarArr3 = oVarArr2;
        if (map != null && (pVar = (p) map.get(c.f29605P)) != null) {
            for (o oVar : oVarArr3) {
                pVar.a(oVar);
            }
        }
        p130q5.a aVar2 = p130q5.a.f29578G;
        System.currentTimeMillis();
        m mVar = new m(dVarA.f31101b, dVarA.f31100a, oVarArr3, aVar2, 0);
        List list = dVarA.f31102c;
        if (list != null) {
            mVar.b(n.f29635H, list);
        }
        String str = dVarA.f31103d;
        if (str != null) {
            mVar.b(n.f29636I, str);
        }
        return mVar;
    }

    @Override // p130q5.k
    public final void a() {
    }
}
