package N6;

import A0.O;
import J6.S;
import java.util.Iterator;
import java.util.List;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final S f4994a;

    static {
        String property;
        Object next;
        int i8 = u.f4999a;
        S sB = null;
        try {
            property = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null) {
            Boolean.parseBoolean(property);
        }
        Iterator itL = O.L();
        q0.h(itL, "<this>");
        p162u6.n nVar = new p162u6.n(itL, 2);
        boolean z7 = nVar instanceof H6.a;
        H6.c aVar = nVar;
        if (!z7) {
            aVar = new H6.a(nVar);
        }
        List listN = H6.e.N(aVar);
        Iterator it = listN.iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                int iC = ((o) next).c();
                do {
                    Object next2 = it.next();
                    int iC2 = ((o) next2).c();
                    if (iC < iC2) {
                        next = next2;
                        iC = iC2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        o oVar = (o) next;
        if (oVar != null) {
            try {
                sB = oVar.b(listN);
            } catch (Throwable unused2) {
                oVar.a();
            }
            if (sB != null) {
                f4994a = sB;
                return;
            }
        }
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }
}
