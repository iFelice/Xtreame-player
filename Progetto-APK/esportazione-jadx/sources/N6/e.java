package N6;

import A0.O;
import J6.AbstractC0214m;
import J6.C0212k;
import J6.C0215n;
import J6.D;
import J6.J;
import J6.Q;
import J6.X;
import J6.Y;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p120p3.e f4967a = new p120p3.e("UNDEFINED", 5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final p120p3.e f4968b = new p120p3.e("REUSABLE_CLAIMED", 5);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p120p3.e f4969c = new p120p3.e("NO_THREAD_ELEMENTS", 5);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p185x6.c f4970d = new p185x6.c(4);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final p185x6.c f4971e = new p185x6.c(5);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p185x6.c f4972f = new p185x6.c(6);

    public static final void a(p185x6.j jVar, Object obj) {
        if (obj == f4969c) {
            return;
        }
        if (!(obj instanceof w)) {
            Object objE = jVar.E(null, f4971e);
            q0.f(objE, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            O.I(objE);
            throw null;
        }
        w wVar = (w) obj;
        X[] xArr = wVar.f5002b;
        int length = xArr.length - 1;
        if (length < 0) {
            return;
        }
        X x7 = xArr[length];
        q0.e(null);
        Object obj2 = wVar.f5001a[length];
        throw null;
    }

    public static final void b(Object obj, p185x6.e eVar) {
        if (!(eVar instanceof d)) {
            eVar.b(obj);
            return;
        }
        d dVar = (d) eVar;
        Throwable thA = p155t6.e.a(obj);
        Object c0212k = thA == null ? obj : new C0212k(false, thA);
        AbstractC0214m abstractC0214m = dVar.f4963J;
        p185x6.e eVar2 = dVar.f4964K;
        if (abstractC0214m.b0(eVar2.getContext())) {
            dVar.f4965L = c0212k;
            dVar.f4261I = 1;
            dVar.f4963J.a0(eVar2.getContext(), dVar);
            return;
        }
        D dA = Y.a();
        if (dA.f4201I >= 4294967296L) {
            dVar.f4965L = c0212k;
            dVar.f4261I = 1;
            p162u6.i iVar = dA.f4203K;
            if (iVar == null) {
                iVar = new p162u6.i();
                dA.f4203K = iVar;
            }
            iVar.addLast(dVar);
            return;
        }
        dA.f0(true);
        try {
            J j8 = (J) eVar2.getContext().k(C0215n.f4245H);
            if (j8 == null || j8.isActive()) {
                Object obj2 = dVar.f4966M;
                p185x6.j context = eVar2.getContext();
                Object objD = d(context, obj2);
                if (objD != f4969c) {
                    a7.b.i(eVar2, context);
                }
                try {
                    eVar2.b(obj);
                    a(context, objD);
                } catch (Throwable th) {
                    a(context, objD);
                    throw th;
                }
            } else {
                dVar.b(q0.n(((Q) j8).l()));
            }
            while (dA.g0()) {
            }
        } catch (Throwable th2) {
            try {
                dVar.g(th2);
            } finally {
                dA.d0();
            }
        }
    }

    public static final Object c(p185x6.j jVar) {
        Object objE = jVar.E(0, f4970d);
        q0.e(objE);
        return objE;
    }

    public static final Object d(p185x6.j jVar, Object obj) {
        if (obj == null) {
            obj = c(jVar);
        }
        if (obj == 0) {
            return f4969c;
        }
        if (obj instanceof Integer) {
            return jVar.E(new w(jVar, ((Number) obj).intValue()), f4972f);
        }
        O.I(obj);
        throw null;
    }
}
