package p021c4;

import android.os.Bundle;
import java.util.Iterator;
import p132r.c;
import p132r.f;

/* JADX INFO: renamed from: c4.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0619x extends AbstractC0623z {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final f f11400H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final f f11401I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f11402J;

    public C0619x(C0597l0 c0597l0) {
        super(c0597l0);
        this.f11401I = new f(0);
        this.f11400H = new f(0);
    }

    public final void n(String str, long j8) {
        if (str == null || str.length() == 0) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Ad unit id must be a non-empty string");
        } else {
            C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(new RunnableC0563a(this, str, j8, 0));
        }
    }

    public final void o(long j8, String str) {
        if (str == null || str.length() == 0) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Ad unit id must be a non-empty string");
        } else {
            C0591j0 c0591j0 = ((C0597l0) this.f10616G).f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(new RunnableC0563a(this, str, j8, 1));
        }
    }

    public final void p(long j8) {
        V0 v5 = ((C0597l0) this.f10616G).f11264U;
        C0597l0.j(v5);
        S0 s0T = v5.t(false);
        f fVar = this.f11400H;
        for (String str : (c) fVar.keySet()) {
            r(str, j8 - ((Long) fVar.get(str)).longValue(), s0T);
        }
        if (!fVar.isEmpty()) {
            q(j8 - this.f11402J, s0T);
        }
        s(j8);
    }

    public final void q(long j8, S0 s7) {
        if (s7 == null) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.a("Not logging ad exposure. No active activity");
        } else {
            if (j8 < 1000) {
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11047T.b(Long.valueOf(j8), "Not logging ad exposure. Less than 1000 ms. exposure");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j8);
            I1.C(s7, bundle, true);
            K0 k8 = ((C0597l0) this.f10616G).f11265V;
            C0597l0.j(k8);
            k8.y("am", "_xa", bundle);
        }
    }

    public final void r(String str, long j8, S0 s7) {
        if (s7 == null) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.a("Not logging ad unit exposure. No active activity");
        } else {
            if (j8 < 1000) {
                T t8 = ((C0597l0) this.f10616G).f11258O;
                C0597l0.k(t8);
                t8.f11047T.b(Long.valueOf(j8), "Not logging ad unit exposure. Less than 1000 ms. exposure");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j8);
            I1.C(s7, bundle, true);
            K0 k8 = ((C0597l0) this.f10616G).f11265V;
            C0597l0.j(k8);
            k8.y("am", "_xu", bundle);
        }
    }

    public final void s(long j8) {
        f fVar = this.f11400H;
        Iterator it = ((c) fVar.keySet()).iterator();
        while (it.hasNext()) {
            fVar.put((String) it.next(), Long.valueOf(j8));
        }
        if (fVar.isEmpty()) {
            return;
        }
        this.f11402J = j8;
    }
}
