package O0;

import android.os.Handler;
import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;
import java.util.HashMap;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;

/* JADX INFO: renamed from: O0.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0295t extends AbstractC0284h {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AbstractC0277a f5241k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f5242l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final e0 f5243m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final d0 f5244n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public r f5245o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public C0293q f5246p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f5247q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f5248r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f5249s;

    public C0295t(AbstractC0277a abstractC0277a, boolean z7) {
        this.f5241k = abstractC0277a;
        this.f5242l = z7 && abstractC0277a.i();
        this.f5243m = new e0();
        this.f5244n = new d0();
        f0 f0VarG = abstractC0277a.g();
        if (f0VarG == null) {
            this.f5245o = new r(new C0294s(abstractC0277a.h()), e0.f26832q, r.f5237e);
        } else {
            this.f5245o = new r(f0VarG, null, null);
            this.f5249s = true;
        }
    }

    @Override // O0.AbstractC0277a
    public final f0 g() {
        return this.f5241k.g();
    }

    @Override // O0.AbstractC0277a
    public final p094m0.I h() {
        return this.f5241k.h();
    }

    @Override // O0.AbstractC0277a
    public final boolean i() {
        return this.f5241k.i();
    }

    @Override // O0.AbstractC0277a
    public final void l(p141s0.O o4) {
        this.f5212j = o4;
        this.f5211i = p117p0.M.n(null);
        if (this.f5242l) {
            return;
        }
        this.f5247q = true;
        u();
    }

    @Override // O0.AbstractC0277a
    public final void n(InterfaceC0298w interfaceC0298w) {
        C0293q c0293q = (C0293q) interfaceC0298w;
        if (c0293q.f5234K != null) {
            AbstractC0277a abstractC0277a = c0293q.f5233J;
            abstractC0277a.getClass();
            abstractC0277a.n(c0293q.f5234K);
        }
        if (interfaceC0298w == this.f5246p) {
            this.f5246p = null;
        }
    }

    @Override // O0.AbstractC0277a
    public final void p() {
        this.f5248r = false;
        this.f5247q = false;
        HashMap map = this.f5210h;
        for (C0283g c0283g : map.values()) {
            c0283g.f5207a.o(c0283g.f5208b);
            AbstractC0277a abstractC0277a = c0283g.f5207a;
            C0282f c0282f = c0283g.f5209c;
            abstractC0277a.r(c0282f);
            abstractC0277a.q(c0282f);
        }
        map.clear();
    }

    @Override // O0.AbstractC0277a
    public final void s(p094m0.I i8) {
        if (this.f5249s) {
            r rVar = this.f5245o;
            this.f5245o = new r(new M(this.f5245o.f5221b, i8), rVar.f5238c, rVar.f5239d);
        } else {
            this.f5245o = new r(new C0294s(i8), e0.f26832q, r.f5237e);
        }
        this.f5241k.s(i8);
    }

    @Override // O0.AbstractC0277a
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final C0293q b(C0300y c0300y, S0.d dVar, long j8) {
        C0293q c0293q = new C0293q(c0300y, dVar, j8);
        H1.i(c0293q.f5233J == null);
        c0293q.f5233J = this.f5241k;
        if (this.f5248r) {
            Object obj = this.f5245o.f5239d;
            Object obj2 = c0300y.f5257a;
            if (obj != null && obj2.equals(r.f5237e)) {
                obj2 = this.f5245o.f5239d;
            }
            c0293q.b(c0300y.a(obj2));
        } else {
            this.f5246p = c0293q;
            if (!this.f5247q) {
                this.f5247q = true;
                u();
            }
        }
        return c0293q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [O0.e, O0.z] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void u() {
        HashMap map = this.f5210h;
        H1.d(!map.containsKey(null));
        ?? r7 = new InterfaceC0301z() { // from class: O0.e

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Object f5202b = null;

            /* JADX WARN: Code duplicated, block: B:19:0x0079  */
            /* JADX WARN: Code duplicated, block: B:37:0x00d8  */
            /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
            @Override // O0.InterfaceC0301z
            public final void a(f0 f0Var) {
                long j8;
                r rVar;
                C0300y c0300yA;
                r rVar2;
                AbstractC0284h abstractC0284h = this;
                abstractC0284h.getClass();
                C0295t c0295t = (C0295t) abstractC0284h;
                if (c0295t.f5248r) {
                    r rVar3 = c0295t.f5245o;
                    c0295t.f5245o = new r(f0Var, rVar3.f5238c, rVar3.f5239d);
                    C0293q c0293q = c0295t.f5246p;
                    if (c0293q != null) {
                        c0295t.v(c0293q.f5236M);
                    }
                } else {
                    if (!f0Var.q()) {
                        e0 e0Var = c0295t.f5243m;
                        f0Var.o(0, e0Var);
                        long j9 = e0Var.f26845l;
                        Object obj = e0Var.f26834a;
                        C0293q c0293q2 = c0295t.f5246p;
                        if (c0293q2 != null) {
                            r rVar4 = c0295t.f5245o;
                            Object obj2 = c0293q2.f5230G.f5257a;
                            d0 d0Var = c0295t.f5244n;
                            rVar4.h(obj2, d0Var);
                            long j10 = d0Var.f26829e + c0293q2.f5231H;
                            c0295t.f5245o.n(0, e0Var, 0L);
                            if (j10 != e0Var.f26845l) {
                                j8 = j10;
                            } else {
                                j8 = j9;
                            }
                        } else {
                            j8 = j9;
                        }
                        Pair pairJ = f0Var.j(c0295t.f5243m, c0295t.f5244n, 0, j8);
                        Object obj3 = pairJ.first;
                        long jLongValue = ((Long) pairJ.second).longValue();
                        if (c0295t.f5249s) {
                            r rVar5 = c0295t.f5245o;
                            rVar = new r(f0Var, rVar5.f5238c, rVar5.f5239d);
                        } else {
                            rVar = new r(f0Var, obj, obj3);
                        }
                        c0295t.f5245o = rVar;
                        C0293q c0293q3 = c0295t.f5246p;
                        if (c0293q3 != null && c0295t.v(jLongValue)) {
                            C0300y c0300y = c0293q3.f5230G;
                            Object obj4 = c0300y.f5257a;
                            if (c0295t.f5245o.f5239d != null && obj4.equals(r.f5237e)) {
                                obj4 = c0295t.f5245o.f5239d;
                            }
                            c0300yA = c0300y.a(obj4);
                        }
                        c0295t.f5249s = true;
                        c0295t.f5248r = true;
                        c0295t.m(c0295t.f5245o);
                        if (c0300yA != null) {
                            C0293q c0293q4 = c0295t.f5246p;
                            c0293q4.getClass();
                            c0293q4.b(c0300yA);
                        }
                    }
                    if (c0295t.f5249s) {
                        r rVar6 = c0295t.f5245o;
                        rVar2 = new r(f0Var, rVar6.f5238c, rVar6.f5239d);
                    } else {
                        rVar2 = new r(f0Var, e0.f26832q, r.f5237e);
                    }
                    c0295t.f5245o = rVar2;
                }
                c0300yA = null;
                c0295t.f5249s = true;
                c0295t.f5248r = true;
                c0295t.m(c0295t.f5245o);
                if (c0300yA != null) {
                    C0293q c0293q5 = c0295t.f5246p;
                    c0293q5.getClass();
                    c0293q5.b(c0300yA);
                }
            }
        };
        C0282f c0282f = new C0282f(this);
        AbstractC0277a abstractC0277a = this.f5241k;
        map.put(null, new C0283g(abstractC0277a, r7, c0282f));
        Handler handler = this.f5211i;
        handler.getClass();
        D d6 = abstractC0277a.f5187c;
        d6.getClass();
        C c8 = new C();
        c8.f5028a = handler;
        c8.f5029b = c0282f;
        d6.f5032c.add(c8);
        Handler handler2 = this.f5211i;
        handler2.getClass();
        G0.o oVar = abstractC0277a.f5188d;
        oVar.getClass();
        G0.n nVar = new G0.n();
        nVar.f3372a = handler2;
        nVar.f3373b = c0282f;
        oVar.f3376c.add(nVar);
        p141s0.O o4 = this.f5212j;
        C0.I i8 = this.f5191g;
        H1.j(i8);
        abstractC0277a.k(r7, o4, i8);
        if (!this.f5186b.isEmpty()) {
            return;
        }
        abstractC0277a.c(r7);
    }

    public final boolean v(long j8) {
        C0293q c0293q = this.f5246p;
        int iB = this.f5245o.b(c0293q.f5230G.f5257a);
        if (iB == -1) {
            return false;
        }
        r rVar = this.f5245o;
        d0 d0Var = this.f5244n;
        rVar.g(iB, d0Var, false);
        long j9 = d0Var.f26828d;
        if (j9 != -9223372036854775807L && j8 >= j9) {
            j8 = Math.max(0L, j9 - 1);
        }
        c0293q.f5236M = j8;
        return true;
    }
}
