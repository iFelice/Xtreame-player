package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.C1093bD;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class E {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.o f22904a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p096m2.i f22905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1093bD f22906c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.google.android.gms.internal.atv_ads_framework.x0 f22907d;

    public E() {
        p096m2.o oVar = new p096m2.o(8);
        this.f22904a = oVar;
        this.f22905b = ((p096m2.i) oVar.f27237H).r();
        this.f22906c = new C1093bD(11);
        this.f22907d = new com.google.android.gms.internal.atv_ads_framework.x0(18);
        final int i8 = 0;
        ((p032e0.u) oVar.f27239J).f24776a.put("internal.registerCallback", new Callable(this) { // from class: com.google.android.gms.internal.measurement.a

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ E f23069b;

            {
                this.f23069b = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i9 = i8;
                E e8 = this.f23069b;
                switch (i9) {
                    case 0:
                        return new V1(e8.f22907d);
                    default:
                        return new V1(e8.f22906c);
                }
            }
        });
        final int i9 = 1;
        ((p032e0.u) oVar.f27239J).f24776a.put("internal.eventLogger", new Callable(this) { // from class: com.google.android.gms.internal.measurement.a

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ E f23069b;

            {
                this.f23069b = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i10 = i9;
                E e8 = this.f23069b;
                switch (i10) {
                    case 0:
                        return new V1(e8.f22907d);
                    default:
                        return new V1(e8.f22906c);
                }
            }
        });
    }

    public final void a(B1 b8) {
        AbstractC2567h abstractC2567h;
        try {
            p096m2.o oVar = this.f22904a;
            this.f22905b = ((p096m2.i) oVar.f27237H).r();
            if (oVar.v(this.f22905b, (D1[]) b8.s().toArray(new D1[0])) instanceof C2555f) {
                throw new IllegalStateException("Program loading failed");
            }
            for (A1 a8 : b8.q().t()) {
                InterfaceC2661y2 interfaceC2661y2S = a8.s();
                String strR = a8.r();
                Iterator it = interfaceC2661y2S.iterator();
                while (it.hasNext()) {
                    InterfaceC2603n interfaceC2603nV = oVar.v(this.f22905b, (D1) it.next());
                    if (!(interfaceC2603nV instanceof C2585k)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    p096m2.i iVar = this.f22905b;
                    if (iVar.B(strR)) {
                        InterfaceC2603n interfaceC2603nX = iVar.x(strR);
                        if (!(interfaceC2603nX instanceof AbstractC2567h)) {
                            throw new IllegalStateException("Invalid function name: ".concat(String.valueOf(strR)));
                        }
                        abstractC2567h = (AbstractC2567h) interfaceC2603nX;
                    } else {
                        abstractC2567h = null;
                    }
                    if (abstractC2567h == null) {
                        throw new IllegalStateException("Rule function is undefined: ".concat(String.valueOf(strR)));
                    }
                    abstractC2567h.a(this.f22905b, Collections.singletonList(interfaceC2603nV));
                }
            }
        } catch (Throwable th) {
            throw new O(th);
        }
    }

    public final boolean b(C2531b c2531b) throws O {
        C1093bD c1093bD = this.f22906c;
        try {
            c1093bD.f18028J = c2531b;
            c1093bD.f18026H = c2531b.clone();
            ((List) c1093bD.f18027I).clear();
            ((p096m2.i) this.f22904a.f27238I).A("runtime.counter", new C2561g(Double.valueOf(0.0d)));
            this.f22907d.G(this.f22905b.r(), c1093bD);
            return (((C2531b) c1093bD.f18026H).equals((C2531b) c1093bD.f18028J) ^ true) || (((List) c1093bD.f18027I).isEmpty() ^ true);
        } catch (Throwable th) {
            throw new O(th);
        }
    }
}
