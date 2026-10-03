package J6;

import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public class Q implements J, InterfaceC0210i, W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4219G = AtomicReferenceFieldUpdater.newUpdater(Q.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4220H = AtomicReferenceFieldUpdater.newUpdater(Q.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    public Q(boolean z7) {
        this._state$volatile = z7 ? r.f4257j : r.f4256i;
    }

    public static String A(Object obj) {
        if (!(obj instanceof P)) {
            if (obj instanceof G) {
                return ((G) obj).isActive() ? "Active" : "New";
            }
            return obj instanceof C0212k ? "Cancelled" : "Completed";
        }
        P p7 = (P) obj;
        if (p7.d()) {
            return "Cancelling";
        }
        return P.f4215b.get(p7) != 0 ? "Completing" : "Active";
    }

    public static C0209h u(N6.k kVar) {
        while (kVar.h()) {
            N6.k kVarE = kVar.e();
            if (kVarE == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = N6.k.f4983b;
                Object obj = atomicReferenceFieldUpdater.get(kVar);
                while (true) {
                    kVar = (N6.k) obj;
                    if (!kVar.h()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(kVar);
                }
            } else {
                kVar = kVarE;
            }
        }
        while (true) {
            kVar = kVar.g();
            if (!kVar.h()) {
                if (kVar instanceof C0209h) {
                    return (C0209h) kVar;
                }
                if (kVar instanceof T) {
                    return null;
                }
            }
        }
    }

    public final Object B(Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        if (!(obj instanceof G)) {
            return r.f4251d;
        }
        if (((obj instanceof A) || (obj instanceof N)) && !(obj instanceof C0209h) && !(obj2 instanceof C0212k)) {
            G g8 = (G) obj;
            Object h8 = obj2 instanceof G ? new H((G) obj2) : obj2;
            do {
                atomicReferenceFieldUpdater = f4219G;
                if (atomicReferenceFieldUpdater.compareAndSet(this, g8, h8)) {
                    w(obj2);
                    h(g8, obj2);
                    return obj2;
                }
            } while (atomicReferenceFieldUpdater.get(this) == g8);
            return r.f4253f;
        }
        G g9 = (G) obj;
        T tN = n(g9);
        if (tN == null) {
            return r.f4253f;
        }
        P p7 = g9 instanceof P ? (P) g9 : null;
        if (p7 == null) {
            p7 = new P(tN, null);
        }
        synchronized (p7) {
            try {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = P.f4215b;
                if (atomicIntegerFieldUpdater.get(p7) != 0) {
                    return r.f4251d;
                }
                atomicIntegerFieldUpdater.set(p7, 1);
                if (p7 != g9) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4219G;
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, g9, p7)) {
                        if (atomicReferenceFieldUpdater2.get(this) != g9) {
                            return r.f4253f;
                        }
                    }
                }
                boolean zD = p7.d();
                C0212k c0212k = obj2 instanceof C0212k ? (C0212k) obj2 : null;
                if (c0212k != null) {
                    p7.a(c0212k.f4242a);
                }
                Throwable thB = zD ^ true ? p7.b() : null;
                if (thB != null) {
                    v(tN, thB);
                }
                C0209h c0209hU = u(tN);
                if (c0209hU != null && C(p7, c0209hU, obj2)) {
                    return r.f4252e;
                }
                tN.d(new N6.i(2), 2);
                C0209h c0209hU2 = u(tN);
                return (c0209hU2 == null || !C(p7, c0209hU2, obj2)) ? j(p7, obj2) : r.f4252e;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean C(P p7, C0209h c0209h, Object obj) {
        while (p190y4.k.O(c0209h.f4237e, false, new O(this, p7, c0209h, obj)) == U.f4221a) {
            c0209h = u(c0209h);
            if (c0209h == null) {
                return false;
            }
        }
        return true;
    }

    @Override // p185x6.j
    public final Object E(Object obj, C6.p pVar) {
        return pVar.c(obj, this);
    }

    @Override // p185x6.j
    public final p185x6.j N(p185x6.j jVar) {
        return p190y4.k.a0(this, jVar);
    }

    @Override // p185x6.j
    public final p185x6.j O(p185x6.i iVar) {
        return p190y4.k.Z(this, iVar);
    }

    public void d(Object obj) {
        c(obj);
    }

    public final boolean e(Object obj) {
        p120p3.e eVar;
        Object objB = r.f4251d;
        if (this instanceof L) {
            do {
                Object obj2 = f4219G.get(this);
                if (obj2 instanceof G) {
                    if (obj2 instanceof P) {
                        P p7 = (P) obj2;
                        p7.getClass();
                        if (P.f4215b.get(p7) != 0) {
                        }
                    }
                    objB = B(obj2, new C0212k(false, i(obj)));
                }
                objB = r.f4251d;
                break;
            } while (objB == r.f4253f);
            if (objB == r.f4252e) {
                return true;
            }
        }
        if (objB == r.f4251d) {
            Throwable thI = null;
            loop1: while (true) {
                Object obj3 = f4219G.get(this);
                if (obj3 instanceof P) {
                    synchronized (obj3) {
                        try {
                            if (P.f4217d.get((P) obj3) == r.f4255h) {
                                eVar = r.f4254g;
                            } else {
                                boolean zD = ((P) obj3).d();
                                if (thI == null) {
                                    thI = i(obj);
                                }
                                ((P) obj3).a(thI);
                                Throwable thB = zD ^ true ? ((P) obj3).b() : null;
                                if (thB != null) {
                                    v(((P) obj3).f4218a, thB);
                                }
                                eVar = r.f4251d;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else if (obj3 instanceof G) {
                    if (thI == null) {
                        thI = i(obj);
                    }
                    G g8 = (G) obj3;
                    if (g8.isActive()) {
                        T tN = n(g8);
                        if (tN == null) {
                            continue;
                        } else {
                            P p8 = new P(tN, thI);
                            while (true) {
                                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4219G;
                                if (atomicReferenceFieldUpdater.compareAndSet(this, g8, p8)) {
                                    v(tN, thI);
                                    eVar = r.f4251d;
                                } else if (atomicReferenceFieldUpdater.get(this) != g8) {
                                }
                            }
                        }
                    } else {
                        Object objB2 = B(obj3, new C0212k(false, thI));
                        if (objB2 == r.f4251d) {
                            throw new IllegalStateException(("Cannot happen in " + obj3).toString());
                        }
                        if (objB2 != r.f4253f) {
                            objB = objB2;
                            break;
                        }
                    }
                } else {
                    eVar = r.f4254g;
                }
                objB = eVar;
                break;
            }
        }
        if (objB != r.f4251d && objB != r.f4252e) {
            if (objB == r.f4254g) {
                return false;
            }
            c(objB);
        }
        return true;
    }

    public final boolean f(Throwable th) {
        if (this instanceof N6.t) {
            return true;
        }
        boolean z7 = th instanceof CancellationException;
        InterfaceC0208g interfaceC0208g = (InterfaceC0208g) f4220H.get(this);
        if (interfaceC0208g == null || interfaceC0208g == U.f4221a) {
            return z7;
        }
        return interfaceC0208g.b(th) || z7;
    }

    public String g() {
        return "Job was cancelled";
    }

    @Override // p185x6.h
    public final p185x6.i getKey() {
        return C0215n.f4245H;
    }

    public final void h(G g8, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4220H;
        InterfaceC0208g interfaceC0208g = (InterfaceC0208g) atomicReferenceFieldUpdater.get(this);
        if (interfaceC0208g != null) {
            interfaceC0208g.a();
            atomicReferenceFieldUpdater.set(this, U.f4221a);
        }
        Y.r rVar = null;
        C0212k c0212k = obj instanceof C0212k ? (C0212k) obj : null;
        Throwable th = c0212k != null ? c0212k.f4242a : null;
        if (g8 instanceof N) {
            try {
                ((N) g8).k(th);
                return;
            } catch (Throwable th2) {
                p(new Y.r("Exception in completion handler " + g8 + " for " + this, 17, th2));
                return;
            }
        }
        T tC = g8.c();
        if (tC != null) {
            tC.d(new N6.i(1), 1);
            Object obj2 = N6.k.f4982a.get(tC);
            q0.f(obj2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            for (N6.k kVarG = (N6.k) obj2; !q0.c(kVarG, tC); kVarG = kVarG.g()) {
                if (kVarG instanceof N) {
                    try {
                        ((N) kVarG).k(th);
                    } catch (Throwable th3) {
                        if (rVar != null) {
                            com.bumptech.glide.d.a(rVar, th3);
                        } else {
                            rVar = new Y.r("Exception in completion handler " + kVarG + " for " + this, 17, th3);
                        }
                    }
                }
            }
            if (rVar != null) {
                p(rVar);
            }
        }
    }

    public final Throwable i(Object obj) {
        Throwable thB;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        Q q7 = (Q) ((W) obj);
        Object obj2 = f4219G.get(q7);
        if (obj2 instanceof P) {
            thB = ((P) obj2).b();
        } else if (obj2 instanceof C0212k) {
            thB = ((C0212k) obj2).f4242a;
        } else {
            if (obj2 instanceof G) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + obj2).toString());
            }
            thB = null;
        }
        CancellationException k8 = thB instanceof CancellationException ? (CancellationException) thB : null;
        if (k8 == null) {
            k8 = new K("Parent job is ".concat(A(obj2)), thB, q7);
        }
        return k8;
    }

    @Override // J6.J
    public boolean isActive() {
        Object obj = f4219G.get(this);
        return (obj instanceof G) && ((G) obj).isActive();
    }

    public final Object j(P p7, Object obj) {
        Object obj2 = null;
        Throwable k8 = null;
        C0212k c0212k = obj instanceof C0212k ? (C0212k) obj : null;
        Throwable th = c0212k != null ? c0212k.f4242a : null;
        synchronized (p7) {
            p7.d();
            ArrayList<Throwable> arrayListE = p7.e(th);
            if (!arrayListE.isEmpty()) {
                for (Object obj3 : arrayListE) {
                    if (!(((Throwable) obj3) instanceof CancellationException)) {
                        obj2 = obj3;
                        break;
                    }
                }
                k8 = (Throwable) obj2;
                if (k8 == null) {
                    k8 = (Throwable) arrayListE.get(0);
                }
            } else if (p7.d()) {
                k8 = new K(g(), null, this);
            }
            if (k8 != null && arrayListE.size() > 1) {
                Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(arrayListE.size()));
                for (Throwable th2 : arrayListE) {
                    if (th2 != k8 && th2 != k8 && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                        com.bumptech.glide.d.a(k8, th2);
                    }
                }
            }
        }
        if (k8 != null && k8 != th) {
            obj = new C0212k(false, k8);
        }
        if (k8 != null && (f(k8) || o(k8))) {
            q0.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
            C0212k.f4241b.compareAndSet((C0212k) obj, 0, 1);
        }
        w(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4219G;
        Object h8 = obj instanceof G ? new H((G) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, p7, h8) && atomicReferenceFieldUpdater.get(this) == p7) {
        }
        h(p7, obj);
        return obj;
    }

    @Override // p185x6.j
    public final p185x6.h k(p185x6.i iVar) {
        return p190y4.k.D(this, iVar);
    }

    public final CancellationException l() {
        CancellationException cancellationException;
        Object obj = f4219G.get(this);
        if (!(obj instanceof P)) {
            if (obj instanceof G) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (!(obj instanceof C0212k)) {
                return new K(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            Throwable th = ((C0212k) obj).f4242a;
            cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            return cancellationException == null ? new K(g(), th, this) : cancellationException;
        }
        Throwable thB = ((P) obj).b();
        if (thB == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String strConcat = getClass().getSimpleName().concat(" is cancelling");
        cancellationException = thB instanceof CancellationException ? (CancellationException) thB : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        if (strConcat == null) {
            strConcat = g();
        }
        return new K(strConcat, thB, this);
    }

    public boolean m() {
        return true;
    }

    public final T n(G g8) {
        T tC = g8.c();
        if (tC != null) {
            return tC;
        }
        if (g8 instanceof A) {
            return new T();
        }
        if (g8 instanceof N) {
            z((N) g8);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + g8).toString());
    }

    public boolean o(Throwable th) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [J6.N, J6.h, N6.k, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2, types: [J6.z, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r6v12, types: [J6.T, N6.k] */
    public final void q(J j8) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        byte b8;
        U u7 = U.f4221a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4220H;
        if (j8 == null) {
            atomicReferenceFieldUpdater2.set(this, u7);
            return;
        }
        Q q7 = (Q) j8;
        do {
            atomicReferenceFieldUpdater = f4219G;
            Object obj = atomicReferenceFieldUpdater.get(q7);
            b8 = 0;
            if (obj instanceof A) {
                if (!((A) obj).f4197a) {
                    A a8 = r.f4257j;
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(q7, obj, a8)) {
                            q7.x();
                            b8 = 1;
                        } else if (atomicReferenceFieldUpdater.get(q7) != obj) {
                            b8 = -1;
                        }
                    }
                }
            } else if (obj instanceof F) {
                T t7 = ((F) obj).f4204a;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(q7, obj, t7)) {
                        q7.x();
                        b8 = 1;
                    } else if (atomicReferenceFieldUpdater.get(q7) != obj) {
                        b8 = -1;
                    }
                }
            }
            if (b8 == 0) {
                break;
            }
        } while (b8 != 1);
        ?? c0209h = new C0209h(this);
        c0209h.f4210d = q7;
        loop2: while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(q7);
            if (!(obj2 instanceof A)) {
                Throwable thB = null;
                if (obj2 instanceof G) {
                    ?? C7 = ((G) obj2).c();
                    if (C7 != 0) {
                        if (!C7.d(c0209h, 7)) {
                            boolean zD = C7.d(c0209h, 3);
                            Object obj3 = atomicReferenceFieldUpdater.get(q7);
                            if (obj3 instanceof P) {
                                thB = ((P) obj3).b();
                            } else {
                                C0212k c0212k = obj3 instanceof C0212k ? (C0212k) obj3 : null;
                                if (c0212k != null) {
                                    thB = c0212k.f4242a;
                                }
                            }
                            c0209h.k(thB);
                            if (!zD) {
                                break;
                            } else {
                                break;
                            }
                        }
                        break;
                    }
                    q0.f(obj2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    q7.z((N) obj2);
                } else {
                    Object obj4 = atomicReferenceFieldUpdater.get(q7);
                    C0212k c0212k2 = obj4 instanceof C0212k ? (C0212k) obj4 : null;
                    c0209h.k(c0212k2 != null ? c0212k2.f4242a : null);
                }
                c0209h = u7;
                break;
            }
            A a9 = (A) obj2;
            if (a9.f4197a) {
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(q7, obj2, c0209h)) {
                        break loop2;
                    }
                } while (atomicReferenceFieldUpdater.get(q7) == obj2);
            } else {
                q7.y(a9);
            }
        }
        atomicReferenceFieldUpdater2.set(this, c0209h);
        if (!(atomicReferenceFieldUpdater.get(this) instanceof G)) {
            c0209h.a();
            atomicReferenceFieldUpdater2.set(this, u7);
        }
    }

    public final InterfaceC0226z r(boolean z7, N n7) {
        boolean zD;
        n7.f4210d = this;
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4219G;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof A) {
                A a8 = (A) obj;
                if (a8.f4197a) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, n7)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                        }
                    }
                    break loop0;
                }
                y(a8);
            } else {
                boolean z8 = obj instanceof G;
                U u7 = U.f4221a;
                if (!z8) {
                    if (z7) {
                        Object obj2 = atomicReferenceFieldUpdater.get(this);
                        C0212k c0212k = obj2 instanceof C0212k ? (C0212k) obj2 : null;
                        n7.k(c0212k != null ? c0212k.f4242a : null);
                    }
                    return u7;
                }
                G g8 = (G) obj;
                T tC = g8.c();
                if (tC == null) {
                    q0.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    z((N) obj);
                } else {
                    if (n7.j()) {
                        P p7 = g8 instanceof P ? (P) g8 : null;
                        Throwable thB = p7 != null ? p7.b() : null;
                        if (thB != null) {
                            if (z7) {
                                n7.k(thB);
                            }
                            return u7;
                        }
                        zD = tC.d(n7, 5);
                    } else {
                        zD = tC.d(n7, 1);
                    }
                    if (zD) {
                        break;
                    }
                }
            }
        }
        return n7;
    }

    public final Object s(Object obj) {
        Object objB;
        do {
            objB = B(f4219G.get(this), obj);
            if (objB == r.f4251d) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                C0212k c0212k = obj instanceof C0212k ? (C0212k) obj : null;
                throw new IllegalStateException(str, c0212k != null ? c0212k.f4242a : null);
            }
        } while (objB == r.f4253f);
        return objB;
    }

    public String t() {
        return getClass().getSimpleName();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(t() + '{' + A(f4219G.get(this)) + '}');
        sb.append('@');
        sb.append(r.i(this));
        return sb.toString();
    }

    public final void v(T t7, Throwable th) {
        t7.getClass();
        t7.d(new N6.i(4), 4);
        Object obj = N6.k.f4982a.get(t7);
        q0.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        Y.r rVar = null;
        for (N6.k kVarG = (N6.k) obj; !q0.c(kVarG, t7); kVarG = kVarG.g()) {
            if ((kVarG instanceof N) && ((N) kVarG).j()) {
                try {
                    ((N) kVarG).k(th);
                } catch (Throwable th2) {
                    if (rVar != null) {
                        com.bumptech.glide.d.a(rVar, th2);
                    } else {
                        rVar = new Y.r("Exception in completion handler " + kVarG + " for " + this, 17, th2);
                    }
                }
            }
        }
        if (rVar != null) {
            p(rVar);
        }
        f(th);
    }

    public final void y(A a8) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        T t7 = new T();
        Object f8 = t7;
        if (!a8.f4197a) {
            f8 = new F(t7);
        }
        do {
            atomicReferenceFieldUpdater = f4219G;
            if (atomicReferenceFieldUpdater.compareAndSet(this, a8, f8)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == a8);
    }

    public final void z(N n7) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        T t7 = new T();
        n7.getClass();
        N6.k.f4983b.set(t7, n7);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = N6.k.f4982a;
        atomicReferenceFieldUpdater2.set(t7, n7);
        loop0: while (atomicReferenceFieldUpdater2.get(n7) == n7) {
            do {
                if (atomicReferenceFieldUpdater2.compareAndSet(n7, n7, t7)) {
                    t7.f(n7);
                    break loop0;
                }
            } while (atomicReferenceFieldUpdater2.get(n7) == n7);
        }
        N6.k kVarG = n7.g();
        do {
            atomicReferenceFieldUpdater = f4219G;
            if (atomicReferenceFieldUpdater.compareAndSet(this, n7, kVarG)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == n7);
    }

    public void x() {
    }

    public void c(Object obj) {
    }

    public void p(Y.r rVar) {
        throw rVar;
    }

    public void w(Object obj) {
    }
}
