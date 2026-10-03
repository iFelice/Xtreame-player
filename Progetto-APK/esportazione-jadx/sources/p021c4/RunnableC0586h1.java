package p021c4;

import Z3.C0433o;
import com.google.android.gms.internal.ads.PN;
import p096m2.e;

/* JADX INFO: renamed from: c4.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0586h1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11199G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ long f11200H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0595k1 f11201I;

    public /* synthetic */ RunnableC0586h1(C0595k1 c0595k1, long j8, int i8) {
        this.f11199G = i8;
        this.f11200H = j8;
        this.f11201I = c0595k1;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00b2  */
    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11199G;
        C0595k1 c0595k1 = this.f11201I;
        switch (i8) {
            case 0:
                c0595k1.m();
                c0595k1.q();
                C0597l0 c0597l0 = (C0597l0) c0595k1.f10616G;
                T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                long j8 = this.f11200H;
                t7.f11047T.b(Long.valueOf(j8), "Activity resumed, time");
                D d6 = E.f10769b1;
                C0584h c0584h = c0597l0.f11256M;
                boolean zB = c0584h.B(null, d6);
                PN pn = c0595k1.f11243L;
                if (zB) {
                    if (c0584h.C() || c0595k1.f11241J) {
                        ((C0595k1) pn.f15387d).m();
                        ((AbstractC0604p) pn.f15386c).a();
                        pn.f15384a = j8;
                        pn.f15385b = j8;
                    }
                } else if (c0584h.C()) {
                    ((C0595k1) pn.f15387d).m();
                    ((AbstractC0604p) pn.f15386c).a();
                    pn.f15384a = j8;
                    pn.f15385b = j8;
                } else {
                    Z z7 = c0597l0.f11257N;
                    C0597l0.i(z7);
                    if (z7.f11103Z.b()) {
                        ((C0595k1) pn.f15387d).m();
                        ((AbstractC0604p) pn.f15386c).a();
                        pn.f15384a = j8;
                        pn.f15385b = j8;
                    }
                }
                e eVar = c0595k1.f11244M;
                C0595k1 c0595k2 = (C0595k1) eVar.f27216I;
                c0595k2.m();
                RunnableC0589i1 runnableC0589i1 = (RunnableC0589i1) eVar.f27215H;
                if (runnableC0589i1 != null) {
                    c0595k2.f11240I.removeCallbacks(runnableC0589i1);
                }
                C0597l0 c0597l1 = (C0597l0) c0595k2.f10616G;
                Z z8 = c0597l1.f11257N;
                C0597l0.i(z8);
                z8.f11103Z.a(false);
                c0595k2.m();
                c0595k2.f11241J = false;
                if (c0597l1.f11256M.B(null, E.f10766a1)) {
                    C0597l0 c0597l2 = (C0597l0) c0595k2.f10616G;
                    K0 k8 = c0597l2.f11265V;
                    C0597l0.j(k8);
                    if (k8.f10920T) {
                        T t8 = c0597l1.f11258O;
                        C0597l0.k(t8);
                        t8.f11047T.a("Retrying trigger URI registration in foreground");
                        K0 k9 = c0597l2.f11265V;
                        C0597l0.j(k9);
                        k9.B();
                    }
                }
                C0433o c0433o = c0595k1.f11242K;
                C0595k1 c0595k3 = (C0595k1) c0433o.f8372H;
                c0595k3.m();
                if (((C0597l0) c0595k3.f10616G).f()) {
                    ((C0597l0) c0595k3.f10616G).f11263T.getClass();
                    c0433o.C(System.currentTimeMillis(), false);
                    break;
                }
                break;
            default:
                c0595k1.m();
                c0595k1.q();
                C0597l0 c0597l3 = (C0597l0) c0595k1.f10616G;
                T t9 = c0597l3.f11258O;
                C0597l0.k(t9);
                long j9 = this.f11200H;
                t9.f11047T.b(Long.valueOf(j9), "Activity paused, time");
                e eVar2 = c0595k1.f11244M;
                C0595k1 c0595k4 = (C0595k1) eVar2.f27216I;
                ((C0597l0) c0595k4.f10616G).f11263T.getClass();
                RunnableC0589i1 runnableC0589i2 = new RunnableC0589i1(eVar2, System.currentTimeMillis(), j9);
                eVar2.f27215H = runnableC0589i2;
                c0595k4.f11240I.postDelayed(runnableC0589i2, 2000L);
                if (c0597l3.f11256M.C()) {
                    ((AbstractC0604p) c0595k1.f11243L.f15386c).a();
                }
                break;
        }
    }
}
