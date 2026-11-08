package B0;

import C0.InterfaceC0076a;
import O0.AbstractC0277a;
import O0.C0293q;
import O0.C0295t;
import O0.InterfaceC0298w;
import O0.InterfaceC0301z;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0.I f1078a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final t0 f1082e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InterfaceC0076a f1085h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p117p0.q f1086i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1088k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public p141s0.O f1089l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public O0.X f1087j = new O0.X();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IdentityHashMap f1080c = new IdentityHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f1081d = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f1079b = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f1083f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashSet f1084g = new HashSet();

    public u0(t0 t0Var, InterfaceC0076a interfaceC0076a, p117p0.I i8, C0.I i9) {
        this.f1078a = i9;
        this.f1082e = t0Var;
        this.f1085h = interfaceC0076a;
        this.f1086i = i8;
    }

    public final p094m0.f0 a(int i8, List list, O0.X x7) {
        if (!list.isEmpty()) {
            this.f1087j = x7;
            for (int i9 = i8; i9 < list.size() + i8; i9++) {
                s0 s0Var = (s0) list.get(i9 - i8);
                ArrayList arrayList = this.f1079b;
                if (i9 > 0) {
                    s0 s0Var2 = (s0) arrayList.get(i9 - 1);
                    s0Var.f1072d = s0Var2.f1069a.f5245o.f5221b.p() + s0Var2.f1072d;
                    s0Var.f1073e = false;
                    s0Var.f1071c.clear();
                } else {
                    s0Var.f1072d = 0;
                    s0Var.f1073e = false;
                    s0Var.f1071c.clear();
                }
                int iP = s0Var.f1069a.f5245o.f5221b.p();
                for (int i10 = i9; i10 < arrayList.size(); i10++) {
                    ((s0) arrayList.get(i10)).f1072d += iP;
                }
                arrayList.add(i9, s0Var);
                this.f1081d.put(s0Var.f1070b, s0Var);
                if (this.f1088k) {
                    e(s0Var);
                    if (this.f1080c.isEmpty()) {
                        this.f1084g.add(s0Var);
                    } else {
                        r0 r0Var = (r0) this.f1083f.get(s0Var);
                        if (r0Var != null) {
                            r0Var.f1066a.c(r0Var.f1067b);
                        }
                    }
                }
            }
        }
        return b();
    }

    public final p094m0.f0 b() {
        ArrayList arrayList = this.f1079b;
        if (arrayList.isEmpty()) {
            return p094m0.f0.f26851a;
        }
        int iP = 0;
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            s0 s0Var = (s0) arrayList.get(i8);
            s0Var.f1072d = iP;
            iP += s0Var.f1069a.f5245o.f5221b.p();
        }
        return new B0(arrayList, this.f1087j);
    }

    public final void c() {
        Iterator it = this.f1084g.iterator();
        while (it.hasNext()) {
            s0 s0Var = (s0) it.next();
            if (s0Var.f1071c.isEmpty()) {
                r0 r0Var = (r0) this.f1083f.get(s0Var);
                if (r0Var != null) {
                    r0Var.f1066a.c(r0Var.f1067b);
                }
                it.remove();
            }
        }
    }

    public final void d(s0 s0Var) {
        if (s0Var.f1073e && s0Var.f1071c.isEmpty()) {
            r0 r0Var = (r0) this.f1083f.remove(s0Var);
            r0Var.getClass();
            AbstractC0277a abstractC0277a = r0Var.f1066a;
            abstractC0277a.o(r0Var.f1067b);
            q0 q0Var = r0Var.f1068c;
            abstractC0277a.r(q0Var);
            abstractC0277a.q(q0Var);
            this.f1084g.remove(s0Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [B0.k0, O0.z] */
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
    public final void e(s0 s0Var) {
        C0295t c0295t = s0Var.f1069a;
        ?? r7 = new InterfaceC0301z() { // from class: B0.k0
            @Override // O0.InterfaceC0301z
            public final void a(p094m0.f0 f0Var) {
                p117p0.I i8 = ((X) this.f1013a.f1082e).f864N;
                i8.d(2);
                i8.e(22);
            }
        };
        q0 q0Var = new q0(this, s0Var);
        this.f1083f.put(s0Var, new r0(c0295t, r7, q0Var));
        String str = p117p0.M.f28050a;
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            looperMyLooper = Looper.getMainLooper();
        }
        Handler handler = new Handler(looperMyLooper, null);
        O0.D d6 = c0295t.f5187c;
        d6.getClass();
        O0.C c8 = new O0.C();
        c8.f5028a = handler;
        c8.f5029b = q0Var;
        d6.f5032c.add(c8);
        Looper looperMyLooper2 = Looper.myLooper();
        if (looperMyLooper2 == null) {
            looperMyLooper2 = Looper.getMainLooper();
        }
        Handler handler2 = new Handler(looperMyLooper2, null);
        G0.o oVar = c0295t.f5188d;
        oVar.getClass();
        G0.n nVar = new G0.n();
        nVar.f3372a = handler2;
        nVar.f3373b = q0Var;
        oVar.f3376c.add(nVar);
        c0295t.k(r7, this.f1089l, this.f1078a);
    }

    public final void f(InterfaceC0298w interfaceC0298w) {
        IdentityHashMap identityHashMap = this.f1080c;
        s0 s0Var = (s0) identityHashMap.remove(interfaceC0298w);
        s0Var.getClass();
        s0Var.f1069a.n(interfaceC0298w);
        s0Var.f1071c.remove(((C0293q) interfaceC0298w).f5230G);
        if (!identityHashMap.isEmpty()) {
            c();
        }
        d(s0Var);
    }

    public final void g(int i8, int i9) {
        for (int i10 = i9 - 1; i10 >= i8; i10--) {
            ArrayList arrayList = this.f1079b;
            s0 s0Var = (s0) arrayList.remove(i10);
            this.f1081d.remove(s0Var.f1070b);
            int i11 = -s0Var.f1069a.f5245o.f5221b.p();
            for (int i12 = i10; i12 < arrayList.size(); i12++) {
                ((s0) arrayList.get(i12)).f1072d += i11;
            }
            s0Var.f1073e = true;
            if (this.f1088k) {
                d(s0Var);
            }
        }
    }
}
