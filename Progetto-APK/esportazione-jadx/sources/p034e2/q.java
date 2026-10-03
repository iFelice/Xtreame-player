package p034e2;

import android.os.Build;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p027d2.b;
import p027d2.n;
import p096m2.s;

/* JADX INFO: loaded from: classes.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f24827a = n.f("Schedulers");

    public static void a(b bVar, WorkDatabase workDatabase, List list) {
        if (list == null || list.size() == 0) {
            return;
        }
        s sVarU = workDatabase.u();
        workDatabase.c();
        try {
            int i8 = Build.VERSION.SDK_INT;
            int i9 = bVar.f24616h;
            if (i8 == 23) {
                i9 /= 2;
            }
            ArrayList arrayListB = sVarU.b(i9);
            ArrayList arrayListA = sVarU.a();
            if (arrayListB.size() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Iterator it = arrayListB.iterator();
                while (it.hasNext()) {
                    sVarU.i(jCurrentTimeMillis, ((p096m2.q) it.next()).f27242a);
                }
            }
            workDatabase.n();
            workDatabase.j();
            if (arrayListB.size() > 0) {
                p096m2.q[] qVarArr = (p096m2.q[]) arrayListB.toArray(new p096m2.q[arrayListB.size()]);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    p pVar = (p) it2.next();
                    if (pVar.a()) {
                        pVar.c(qVarArr);
                    }
                }
            }
            if (arrayListA.size() > 0) {
                p096m2.q[] qVarArr2 = (p096m2.q[]) arrayListA.toArray(new p096m2.q[arrayListA.size()]);
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    p pVar2 = (p) it3.next();
                    if (!pVar2.a()) {
                        pVar2.c(qVarArr2);
                    }
                }
            }
        } catch (Throwable th) {
            workDatabase.j();
            throw th;
        }
    }
}
