package N6;

import J6.AbstractC0214m;
import J6.AbstractC0224x;
import J6.C0212k;
import J6.D;
import J6.Y;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends AbstractC0224x implements p199z6.d, p185x6.e {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f4962N = AtomicReferenceFieldUpdater.newUpdater(d.class, Object.class, "_reusableCancellableContinuation$volatile");

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AbstractC0214m f4963J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p185x6.e f4964K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Object f4965L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Object f4966M;
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    public d(AbstractC0214m abstractC0214m, p199z6.c cVar) {
        super(-1);
        this.f4963J = abstractC0214m;
        this.f4964K = cVar;
        this.f4965L = e.f4967a;
        p185x6.j jVar = cVar.f31928H;
        q0.e(jVar);
        this.f4966M = e.c(jVar);
    }

    @Override // p199z6.d
    public final p199z6.d a() {
        p185x6.e eVar = this.f4964K;
        if (eVar instanceof p199z6.d) {
            return (p199z6.d) eVar;
        }
        return null;
    }

    @Override // p185x6.e
    public final void b(Object obj) {
        Throwable thA = p155t6.e.a(obj);
        Object c0212k = thA == null ? obj : new C0212k(false, thA);
        p185x6.e eVar = this.f4964K;
        p185x6.j context = eVar.getContext();
        AbstractC0214m abstractC0214m = this.f4963J;
        if (abstractC0214m.b0(context)) {
            this.f4965L = c0212k;
            this.f4261I = 0;
            abstractC0214m.a0(eVar.getContext(), this);
            return;
        }
        D dA = Y.a();
        if (dA.f4201I >= 4294967296L) {
            this.f4965L = c0212k;
            this.f4261I = 0;
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
            p185x6.j context2 = eVar.getContext();
            Object objD = e.d(context2, this.f4966M);
            try {
                eVar.b(obj);
                e.a(context2, objD);
                while (dA.g0()) {
                }
            } catch (Throwable th) {
                e.a(context2, objD);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                g(th2);
            } finally {
                dA.d0();
            }
        }
    }

    @Override // p185x6.e
    public final p185x6.j getContext() {
        return this.f4964K.getContext();
    }

    @Override // J6.AbstractC0224x
    public final Object h() {
        Object obj = this.f4965L;
        this.f4965L = e.f4967a;
        return obj;
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f4963J + ", " + J6.r.t(this.f4964K) + ']';
    }

    @Override // J6.AbstractC0224x
    public final p185x6.e d() {
        return this;
    }
}
