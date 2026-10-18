package N6;

import A0.O;
import java.util.Iterator;
import java.util.List;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f4960a;

    static {
        Iterator itE = O.E();
        q0.h(itE, "<this>");
        p162u6.n nVar = new p162u6.n(itE, 2);
        boolean z7 = nVar instanceof H6.a;
        H6.c aVar = nVar;
        if (!z7) {
            aVar = new H6.a(nVar);
        }
        f4960a = H6.e.N(aVar);
    }
}
