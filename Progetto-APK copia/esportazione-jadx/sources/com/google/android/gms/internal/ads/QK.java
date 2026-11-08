package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class QK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2344zL f16008a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PK f16012e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InterfaceC1152cL f16015h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InterfaceC2101un f16016i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f16017j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InterfaceC1615lJ f16018k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public WN f16019l = new WN();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IdentityHashMap f16010c = new IdentityHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f16011d = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f16009b = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f16013f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashSet f16014g = new HashSet();

    public QK(PK pk, InterfaceC1152cL interfaceC1152cL, C2054ts c2054ts, C2344zL c2344zL) {
        this.f16008a = c2344zL;
        this.f16012e = pk;
        this.f16015h = interfaceC1152cL;
        this.f16016i = c2054ts;
    }

    public final AbstractC0774Ie a() {
        ArrayList arrayList = this.f16009b;
        if (arrayList.isEmpty()) {
            return AbstractC0774Ie.f13891a;
        }
        int iC = 0;
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            OK ok = (OK) arrayList.get(i8);
            ok.f15157d = iC;
            iC += ok.f15154a.f21070o.f20168b.c();
        }
        return new WK(arrayList, this.f16019l);
    }

    public final AbstractC0774Ie b(int i8, int i9, List list) {
        ArrayList arrayList = this.f16009b;
        p113o3.r.J(i8 >= 0 && i8 <= i9 && i9 <= arrayList.size());
        p113o3.r.J(list.size() == i9 - i8);
        for (int i10 = i8; i10 < i9; i10++) {
            ((OK) arrayList.get(i10)).f15154a.p((C2225x6) list.get(i10 - i8));
        }
        return a();
    }

    public final void c(EO eo) {
        p113o3.r.M(!this.f16017j);
        this.f16018k = eo;
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f16009b;
            if (i8 >= arrayList.size()) {
                this.f16017j = true;
                return;
            }
            OK ok = (OK) arrayList.get(i8);
            k(ok);
            this.f16014g.add(ok);
            i8++;
        }
    }

    public final void d(InterfaceC2138vN interfaceC2138vN) {
        IdentityHashMap identityHashMap = this.f16010c;
        OK ok = (OK) identityHashMap.remove(interfaceC2138vN);
        ok.getClass();
        ok.f15154a.a(interfaceC2138vN);
        ok.f15156c.remove(((C1879qN) interfaceC2138vN).f20575G);
        if (!identityHashMap.isEmpty()) {
            i();
        }
        j(ok);
    }

    public final AbstractC0774Ie e(int i8, List list, WN wn) {
        if (!list.isEmpty()) {
            this.f16019l = wn;
            for (int i9 = i8; i9 < list.size() + i8; i9++) {
                OK ok = (OK) list.get(i9 - i8);
                ArrayList arrayList = this.f16009b;
                if (i9 > 0) {
                    OK ok2 = (OK) arrayList.get(i9 - 1);
                    ok.f15157d = ok2.f15154a.f21070o.f20168b.c() + ok2.f15157d;
                    ok.f15158e = false;
                    ok.f15156c.clear();
                } else {
                    ok.f15157d = 0;
                    ok.f15158e = false;
                    ok.f15156c.clear();
                }
                int iC = ok.f15154a.f21070o.f20168b.c();
                for (int i10 = i9; i10 < arrayList.size(); i10++) {
                    ((OK) arrayList.get(i10)).f15157d += iC;
                }
                arrayList.add(i9, ok);
                this.f16011d.put(ok.f15155b, ok);
                if (this.f16017j) {
                    k(ok);
                    if (this.f16010c.isEmpty()) {
                        this.f16014g.add(ok);
                    } else {
                        NK nk = (NK) this.f16013f.get(ok);
                        if (nk != null) {
                            nk.f14899a.e(nk.f14900b);
                        }
                    }
                }
            }
        }
        return a();
    }

    public final AbstractC0774Ie f(int i8, int i9, WN wn) {
        boolean z7 = false;
        if (i8 >= 0 && i8 <= i9 && i9 <= this.f16009b.size()) {
            z7 = true;
        }
        p113o3.r.J(z7);
        this.f16019l = wn;
        l(i8, i9);
        return a();
    }

    public final AbstractC0774Ie g(List list, WN wn) {
        ArrayList arrayList = this.f16009b;
        l(0, arrayList.size());
        return e(arrayList.size(), list, wn);
    }

    public final AbstractC0774Ie h(WN wn) {
        int size = this.f16009b.size();
        if (wn.f17244b.length != size) {
            wn = new WN(new Random(wn.f17243a.nextLong())).a(size);
        }
        this.f16019l = wn;
        return a();
    }

    public final void i() {
        Iterator it = this.f16014g.iterator();
        while (it.hasNext()) {
            OK ok = (OK) it.next();
            if (ok.f15156c.isEmpty()) {
                NK nk = (NK) this.f16013f.get(ok);
                if (nk != null) {
                    nk.f14899a.e(nk.f14900b);
                }
                it.remove();
            }
        }
    }

    public final void j(OK ok) {
        if (ok.f15158e && ok.f15156c.isEmpty()) {
            NK nk = (NK) this.f16013f.remove(ok);
            nk.getClass();
            AbstractC1257eN abstractC1257eN = nk.f14899a;
            abstractC1257eN.l(nk.f14900b);
            C0871Om c0871Om = nk.f14901c;
            abstractC1257eN.o(c0871Om);
            abstractC1257eN.n(c0871Om);
            this.f16014g.remove(ok);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.KK, com.google.android.gms.internal.ads.xN] */
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
    public final void k(OK ok) {
        C2034tN c2034tN = ok.f15154a;
        ?? r7 = new InterfaceC2242xN() { // from class: com.google.android.gms.internal.ads.KK
            @Override // com.google.android.gms.internal.ads.InterfaceC2242xN
            public final void a(AbstractC1257eN abstractC1257eN, AbstractC0774Ie abstractC0774Ie) {
                C2054ts c2054ts = ((BK) this.f14325a.f16012e).f12326N;
                c2054ts.f21154a.removeMessages(2);
                c2054ts.c(22);
            }
        };
        C0871Om c0871Om = new C0871Om(this, ok, 27);
        this.f16013f.put(ok, new NK(c2034tN, r7, c0871Om));
        int i8 = Et.f13234a;
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            looperMyLooper = Looper.getMainLooper();
        }
        Handler handler = new Handler(looperMyLooper, null);
        C1294f8 c1294f8 = c2034tN.f18519c;
        c1294f8.getClass();
        ((CopyOnWriteArrayList) c1294f8.f18728J).add(new C2346zN(handler, c0871Om));
        Looper looperMyLooper2 = Looper.myLooper();
        if (looperMyLooper2 == null) {
            looperMyLooper2 = Looper.getMainLooper();
        }
        new Handler(looperMyLooper2, null);
        C2137vM c2137vM = c2034tN.f18520d;
        c2137vM.getClass();
        c2137vM.f21518b.add(new C2085uM(c0871Om));
        c2034tN.i(r7, this.f16018k, this.f16008a);
    }

    public final void l(int i8, int i9) {
        while (true) {
            i9--;
            if (i9 < i8) {
                return;
            }
            ArrayList arrayList = this.f16009b;
            OK ok = (OK) arrayList.remove(i9);
            this.f16011d.remove(ok.f15155b);
            int i10 = -ok.f15154a.f21070o.f20168b.c();
            for (int i11 = i9; i11 < arrayList.size(); i11++) {
                ((OK) arrayList.get(i11)).f15157d += i10;
            }
            ok.f15158e = true;
            if (this.f16017j) {
                j(ok);
            }
        }
    }
}
