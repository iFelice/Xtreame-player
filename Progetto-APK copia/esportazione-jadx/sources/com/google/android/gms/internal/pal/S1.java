package com.google.android.gms.internal.pal;

import O1.C0325y;
import android.view.View;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class S1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f23650h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f23651i;

    public S1(A1 a8, L4 l4, int i8) {
        super(a8, "tPxcLkiesd8JzrYIyuRbLGxWAQfsX+C1jrJaS2rsRu6lU/ve1b9hEzSSzo6VwqXx", "0RWQk7vrKrAXtxwBYq7T9nI/JnUnK0yiZtx30+mk7/g=", l4, i8, 31);
        this.f23651i = null;
    }

    private final void c() {
        L4 l4 = this.f23701d;
        if (l4.f23476I) {
            l4.f();
            l4.f23476I = false;
        }
        C2765m0.v0((C2765m0) l4.f23475H, -1L);
        L4 l8 = this.f23701d;
        if (l8.f23476I) {
            l8.f();
            l8.f23476I = false;
        }
        C2765m0.w0((C2765m0) l8.f23475H, -1L);
        if (((List) this.f23651i) == null) {
            this.f23651i = (List) this.f23702e.invoke(null, this.f23698a.f23425a);
        }
        List list = (List) this.f23651i;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.f23701d) {
            L4 l9 = this.f23701d;
            long jLongValue = ((Long) ((List) this.f23651i).get(0)).longValue();
            if (l9.f23476I) {
                l9.f();
                l9.f23476I = false;
            }
            C2765m0.v0((C2765m0) l9.f23475H, jLongValue);
            L4 l10 = this.f23701d;
            long jLongValue2 = ((Long) ((List) this.f23651i).get(1)).longValue();
            if (l10.f23476I) {
                l10.f();
                l10.f23476I = false;
            }
            C2765m0.w0((C2765m0) l10.f23475H, jLongValue2);
        }
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        int i8 = 2;
        switch (this.f23650h) {
            case 0:
                c();
                return;
            case 1:
                StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) this.f23651i;
                if (stackTraceElementArr != null) {
                    C2798q1 c2798q1 = new C2798q1((String) this.f23702e.invoke(null, stackTraceElementArr), 1);
                    synchronized (this.f23701d) {
                        try {
                            L4 l4 = this.f23701d;
                            long jLongValue = c2798q1.f23985b.longValue();
                            if (l4.f23476I) {
                                l4.f();
                                l4.f23476I = false;
                            }
                            C2765m0.u((C2765m0) l4.f23475H, jLongValue);
                            if (((Boolean) c2798q1.f23986c).booleanValue()) {
                                L4 l8 = this.f23701d;
                                if (true == ((Boolean) c2798q1.f23987d).booleanValue()) {
                                    i8 = 1;
                                }
                                if (l8.f23476I) {
                                    l8.f();
                                    l8.f23476I = false;
                                }
                                C2765m0.Y((C2765m0) l8.f23475H, i8);
                            } else {
                                L4 l9 = this.f23701d;
                                if (l9.f23476I) {
                                    l9.f();
                                    l9.f23476I = false;
                                }
                                C2765m0.Y((C2765m0) l9.f23475H, 3);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return;
                }
                return;
            default:
                if (((View) this.f23651i) != null) {
                    C0325y c0325y = AbstractC2759l2.f23944u;
                    C2727h2 c2727h2 = C2727h2.f23833d;
                    Boolean bool = (Boolean) c2727h2.f23836c.a(c0325y);
                    Boolean bool2 = (Boolean) c2727h2.f23836c.a(AbstractC2759l2.f23946w);
                    String str = (String) this.f23702e.invoke(null, (View) this.f23651i, this.f23698a.f23425a.getResources().getDisplayMetrics(), bool, bool2);
                    D1 d6 = new D1();
                    HashMap mapA = AbstractC2686c1.a(str);
                    if (mapA != null) {
                        d6.f23489a = (Long) mapA.get(0);
                        d6.f23490b = (Long) mapA.get(1);
                        d6.f23491c = (Long) mapA.get(2);
                        d6.f23492d = (Long) mapA.get(3);
                        d6.f23493e = (Long) mapA.get(4);
                    }
                    E eM = X.m();
                    long jLongValue2 = d6.f23489a.longValue();
                    if (eM.f23476I) {
                        eM.f();
                        eM.f23476I = false;
                    }
                    X.o((X) eM.f23475H, jLongValue2);
                    long jLongValue3 = d6.f23490b.longValue();
                    if (eM.f23476I) {
                        eM.f();
                        eM.f23476I = false;
                    }
                    X.p((X) eM.f23475H, jLongValue3);
                    long jLongValue4 = d6.f23491c.longValue();
                    if (eM.f23476I) {
                        eM.f();
                        eM.f23476I = false;
                    }
                    X.q((X) eM.f23475H, jLongValue4);
                    if (bool2.booleanValue()) {
                        long jLongValue5 = d6.f23493e.longValue();
                        if (eM.f23476I) {
                            eM.f();
                            eM.f23476I = false;
                        }
                        X.n((X) eM.f23475H, jLongValue5);
                    }
                    if (bool.booleanValue()) {
                        long jLongValue6 = d6.f23492d.longValue();
                        if (eM.f23476I) {
                            eM.f();
                            eM.f23476I = false;
                        }
                        X.r((X) eM.f23475H, jLongValue6);
                    }
                    X x7 = (X) eM.d();
                    L4 l10 = this.f23701d;
                    if (l10.f23476I) {
                        l10.f();
                        l10.f23476I = false;
                    }
                    C2765m0.D((C2765m0) l10.f23475H, x7);
                    return;
                }
                return;
        }
    }

    public S1(A1 a8, L4 l4, int i8, View view) {
        super(a8, "xcWDoPM3ZfO4P10VSUmZKRTMvsXPXnglJL31bwAJBgJGdSUy2IQG17s4MILOncV2", "9rXsTdb/WXYONX554dN5CJ2eqpcy9gFPMPi8uAjaHTA=", l4, i8, 57);
        this.f23651i = view;
    }

    public S1(A1 a8, L4 l4, int i8, StackTraceElement[] stackTraceElementArr) {
        super(a8, "d2tnKFzXPwiZyQGi+81r0jKuUmc/wF2bs8mf3rZLUgisIeswnimQDm/skPYjpEo4", "e/DvqiTz4SkFtBEBn/3V8Pr2h2slHO4xuLOBAItCJ4w=", l4, i8, 45);
        this.f23651i = stackTraceElementArr;
    }
}
