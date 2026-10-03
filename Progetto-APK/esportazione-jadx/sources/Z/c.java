package Z;

import Y.AbstractComponentCallbacksC0406s;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.Set;
import p039f.RunnableC3004t;
import p162u6.o;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f8208a = b.f8205c;

    public static b a(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        while (abstractComponentCallbacksC0406s != null) {
            if (abstractComponentCallbacksC0406s.r()) {
                abstractComponentCallbacksC0406s.n();
            }
            abstractComponentCallbacksC0406s = abstractComponentCallbacksC0406s.f7952b0;
        }
        return f8208a;
    }

    public static void b(b bVar, g gVar) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = gVar.f8210G;
        String name = abstractComponentCallbacksC0406s.getClass().getName();
        a aVar = a.f8197G;
        Set set = bVar.f8206a;
        if (set.contains(aVar)) {
            Log.d("FragmentStrictMode", "Policy violation in ".concat(name), gVar);
        }
        if (set.contains(a.f8198H)) {
            RunnableC3004t runnableC3004t = new RunnableC3004t(3, name, gVar);
            if (!abstractComponentCallbacksC0406s.r()) {
                runnableC3004t.run();
                return;
            }
            Handler handler = abstractComponentCallbacksC0406s.n().f7742u.f7981O;
            q0.g(handler, "fragment.parentFragmentManager.host.handler");
            if (q0.c(handler.getLooper(), Looper.myLooper())) {
                runnableC3004t.run();
            } else {
                handler.post(runnableC3004t);
            }
        }
    }

    public static void c(g gVar) {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(gVar.f8210G.getClass().getName()), gVar);
        }
    }

    public static final void d(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, String str) {
        q0.h(abstractComponentCallbacksC0406s, "fragment");
        q0.h(str, "previousFragmentId");
        d dVar = new d(abstractComponentCallbacksC0406s, "Attempting to reuse fragment " + abstractComponentCallbacksC0406s + " with previous ID " + str);
        c(dVar);
        b bVarA = a(abstractComponentCallbacksC0406s);
        if (bVarA.f8206a.contains(a.f8199I) && e(bVarA, abstractComponentCallbacksC0406s.getClass(), d.class)) {
            b(bVarA, dVar);
        }
    }

    public static boolean e(b bVar, Class cls, Class cls2) {
        Set set = (Set) bVar.f8207b.get(cls.getName());
        if (set == null) {
            return true;
        }
        if (q0.c(cls2.getSuperclass(), g.class) || !o.x(set, cls2.getSuperclass())) {
            return !set.contains(cls2);
        }
        return false;
    }
}
