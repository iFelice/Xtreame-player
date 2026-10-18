package J6;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import z4.q0;

/* JADX INFO: renamed from: J6.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0205d extends AbstractC0224x implements p185x6.e, p199z6.d {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f4229L = AtomicIntegerFieldUpdater.newUpdater(C0205d.class, "_decisionAndIndex$volatile");

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4230M = AtomicReferenceFieldUpdater.newUpdater(C0205d.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4231N = AtomicReferenceFieldUpdater.newUpdater(C0205d.class, Object.class, "_parentHandle$volatile");

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p185x6.e f4232J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p185x6.j f4233K;
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    public C0205d(p185x6.e eVar) {
        super(1);
        this.f4232J = eVar;
        this.f4233K = eVar.getContext();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = C0203b.f4226a;
    }

    @Override // p199z6.d
    public final p199z6.d a() {
        p185x6.e eVar = this.f4232J;
        if (eVar instanceof p199z6.d) {
            return (p199z6.d) eVar;
        }
        return null;
    }

    @Override // p185x6.e
    public final void b(Object obj) {
        Throwable thA = p155t6.e.a(obj);
        if (thA != null) {
            obj = new C0212k(false, thA);
        }
        int i8 = this.f4261I;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4230M;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof V)) {
                if (obj2 instanceof C0206e) {
                    C0206e c0206e = (C0206e) obj2;
                    c0206e.getClass();
                    if (C0206e.f4234c.compareAndSet(c0206e, 0, 1)) {
                        return;
                    }
                }
                throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
            }
            boolean z7 = obj instanceof C0212k;
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, obj)) {
                    if (!n()) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4231N;
                        InterfaceC0226z interfaceC0226z = (InterfaceC0226z) atomicReferenceFieldUpdater2.get(this);
                        if (interfaceC0226z != null) {
                            interfaceC0226z.a();
                            atomicReferenceFieldUpdater2.set(this, U.f4221a);
                        }
                    }
                    j(i8);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj2);
        }
    }

    @Override // J6.AbstractC0224x
    public final void c(CancellationException cancellationException) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4230M;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof V) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj instanceof C0212k) {
                return;
            }
            if (!(obj instanceof C0211j)) {
                C0211j c0211j = new C0211j(obj, cancellationException, 14);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0211j)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                    }
                }
                return;
            } else {
                C0211j c0211j2 = (C0211j) obj;
                if (!(!(c0211j2.f4240c != null))) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                C0211j c0211j3 = new C0211j(c0211j2.f4238a, c0211j2.f4239b, cancellationException);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c0211j3)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                    }
                }
                return;
            }
        }
    }

    @Override // J6.AbstractC0224x
    public final p185x6.e d() {
        return this.f4232J;
    }

    @Override // J6.AbstractC0224x
    public final Throwable e(Object obj) {
        Throwable thE = super.e(obj);
        if (thE != null) {
            return thE;
        }
        return null;
    }

    @Override // J6.AbstractC0224x
    public final Object f(Object obj) {
        return obj instanceof C0211j ? ((C0211j) obj).f4238a : obj;
    }

    @Override // p185x6.e
    public final p185x6.j getContext() {
        return this.f4233K;
    }

    @Override // J6.AbstractC0224x
    public final Object h() {
        return f4230M.get(this);
    }

    public final void i(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4230M;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof V)) {
                return;
            }
            C0206e c0206e = new C0206e(this, th);
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, c0206e)) {
                    if (!n()) {
                        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4231N;
                        InterfaceC0226z interfaceC0226z = (InterfaceC0226z) atomicReferenceFieldUpdater2.get(this);
                        if (interfaceC0226z != null) {
                            interfaceC0226z.a();
                            atomicReferenceFieldUpdater2.set(this, U.f4221a);
                        }
                    }
                    j(this.f4261I);
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj);
        }
    }

    public final void j(int i8) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i9;
        do {
            atomicIntegerFieldUpdater = f4229L;
            i9 = atomicIntegerFieldUpdater.get(this);
            int i10 = i9 >> 29;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
                boolean z7 = i8 == 4;
                p185x6.e eVar = this.f4232J;
                if (!z7 && (eVar instanceof N6.d)) {
                    boolean z8 = i8 == 1 || i8 == 2;
                    int i11 = this.f4261I;
                    if (z8 == (i11 == 1 || i11 == 2)) {
                        N6.d dVar = (N6.d) eVar;
                        AbstractC0214m abstractC0214m = dVar.f4963J;
                        p185x6.j context = dVar.f4964K.getContext();
                        if (abstractC0214m.b0(context)) {
                            abstractC0214m.a0(context, this);
                            return;
                        }
                        D dA = Y.a();
                        if (dA.f4201I >= 4294967296L) {
                            p162u6.i iVar = dA.f4203K;
                            if (iVar == null) {
                                iVar = new p162u6.i();
                                dA.f4203K = iVar;
                            }
                            iVar.addLast(this);
                            return;
                        }
                        dA.f0(true);
                        try {
                            S3.e.n(this, eVar, true);
                            do {
                            } while (dA.g0());
                        } catch (Throwable th) {
                            try {
                                g(th);
                            } finally {
                                dA.d0();
                            }
                        }
                        return;
                    }
                }
                S3.e.n(this, eVar, z7);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i9, 1073741824 + (536870911 & i9)));
    }

    public final Object k() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i8;
        boolean zN = n();
        do {
            atomicIntegerFieldUpdater = f4229L;
            i8 = atomicIntegerFieldUpdater.get(this);
            int i9 = i8 >> 29;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new IllegalStateException("Already suspended".toString());
                }
                if (zN) {
                    o();
                }
                Object obj = f4230M.get(this);
                if (obj instanceof C0212k) {
                    throw ((C0212k) obj).f4242a;
                }
                int i10 = this.f4261I;
                if (i10 == 1 || i10 == 2) {
                    J j8 = (J) this.f4233K.k(C0215n.f4245H);
                    if (j8 != null && !j8.isActive()) {
                        CancellationException cancellationExceptionL = ((Q) j8).l();
                        c(cancellationExceptionL);
                        throw cancellationExceptionL;
                    }
                }
                return f(obj);
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i8, 536870912 + (536870911 & i8)));
        if (((InterfaceC0226z) f4231N.get(this)) == null) {
            m();
        }
        if (zN) {
            o();
        }
        return p192y6.a.f31454G;
    }

    public final void l() {
        InterfaceC0226z interfaceC0226zM = m();
        if (interfaceC0226zM != null && (!(f4230M.get(this) instanceof V))) {
            interfaceC0226zM.a();
            f4231N.set(this, U.f4221a);
        }
    }

    public final InterfaceC0226z m() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        J j8 = (J) this.f4233K.k(C0215n.f4245H);
        if (j8 == null) {
            return null;
        }
        InterfaceC0226z interfaceC0226zO = p190y4.k.O(j8, true, new C0207f(this, 0));
        do {
            atomicReferenceFieldUpdater = f4231N;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, interfaceC0226zO)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return interfaceC0226zO;
    }

    public final boolean n() {
        if (this.f4261I == 2) {
            p185x6.e eVar = this.f4232J;
            q0.f(eVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (N6.d.f4962N.get((N6.d) eVar) != null) {
                return true;
            }
        }
        return false;
    }

    public final void o() {
        p185x6.e eVar = this.f4232J;
        Throwable th = null;
        N6.d dVar = eVar instanceof N6.d ? (N6.d) eVar : null;
        if (dVar != null) {
            loop0: while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = N6.d.f4962N;
                Object obj = atomicReferenceFieldUpdater.get(dVar);
                p120p3.e eVar2 = N6.e.f4968b;
                if (obj != eVar2) {
                    if (!(obj instanceof Throwable)) {
                        throw new IllegalStateException(("Inconsistent state " + obj).toString());
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(dVar, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(dVar) != obj) {
                            throw new IllegalArgumentException("Failed requirement.".toString());
                        }
                    }
                    th = (Throwable) obj;
                    break;
                }
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(dVar, eVar2, this)) {
                        break loop0;
                    }
                } while (atomicReferenceFieldUpdater.get(dVar) == eVar2);
            }
            if (th == null) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f4231N;
            InterfaceC0226z interfaceC0226z = (InterfaceC0226z) atomicReferenceFieldUpdater2.get(this);
            if (interfaceC0226z != null) {
                interfaceC0226z.a();
                atomicReferenceFieldUpdater2.set(this, U.f4221a);
            }
            i(th);
        }
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("CancellableContinuation(");
        sb.append(r.t(this.f4232J));
        sb.append("){");
        Object obj = f4230M.get(this);
        if (obj instanceof V) {
            str = "Active";
        } else {
            str = obj instanceof C0206e ? "Cancelled" : "Completed";
        }
        sb.append(str);
        sb.append("}@");
        sb.append(r.i(this));
        return sb.toString();
    }
}
