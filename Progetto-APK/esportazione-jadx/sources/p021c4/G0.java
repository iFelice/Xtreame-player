package p021c4;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.PN;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class G0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10846G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ long f10847H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ K0 f10848I;

    public /* synthetic */ G0(K0 k8, long j8, int i8) {
        this.f10846G = i8;
        this.f10847H = j8;
        this.f10848I = k8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long jElapsedRealtime;
        int i8 = this.f10846G;
        long j8 = this.f10847H;
        K0 k8 = this.f10848I;
        switch (i8) {
            case 0:
                C0597l0 c0597l0 = (C0597l0) k8.f10616G;
                Z z7 = c0597l0.f11257N;
                C0597l0.i(z7);
                z7.f11095R.b(j8);
                T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                t7.f11046S.b(Long.valueOf(j8), "Session timeout duration set");
                break;
            default:
                k8.m();
                k8.n();
                C0597l0 c0597l1 = (C0597l0) k8.f10616G;
                T t8 = c0597l1.f11258O;
                C0597l0.k(t8);
                t8.f11046S.a("Resetting analytics data (FE)");
                C0597l0 c0597l2 = (C0597l0) k8.f10616G;
                C0595k1 c0595k1 = c0597l2.f11260Q;
                C0597l0.j(c0595k1);
                c0595k1.m();
                PN pn = c0595k1.f11243L;
                ((AbstractC0604p) pn.f15386c).a();
                C0597l0 c0597l3 = (C0597l0) ((C0595k1) pn.f15387d).f10616G;
                if (c0597l3.f11256M.B(null, E.f10772c1)) {
                    c0597l3.f11263T.getClass();
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    pn.f15384a = jElapsedRealtime;
                } else {
                    pn.f15384a = 0L;
                    jElapsedRealtime = 0;
                }
                pn.f15385b = jElapsedRealtime;
                c0597l2.n().w();
                boolean z8 = !((C0597l0) k8.f10616G).f();
                Z z9 = c0597l1.f11257N;
                C0597l0.i(z9);
                z9.f11090M.b(j8);
                C0597l0 c0597l4 = (C0597l0) z9.f10616G;
                Z z10 = c0597l4.f11257N;
                C0597l0.i(z10);
                if (!TextUtils.isEmpty(z10.f11106c0.n())) {
                    z9.f11106c0.o(null);
                }
                z9.f11100W.b(0L);
                z9.f11101X.b(0L);
                if (!c0597l4.f11256M.n()) {
                    z9.w(z8);
                }
                z9.f11107d0.o(null);
                z9.f11108e0.b(0L);
                z9.f11109f0.w(null);
                C0574d1 c0574d1R = c0597l2.r();
                c0574d1R.m();
                c0574d1R.n();
                J1 j1B = c0574d1R.B(false);
                c0574d1R.F();
                ((C0597l0) c0574d1R.f10616G).o().s();
                c0574d1R.E(new Z0(c0574d1R, j1B, 0));
                C0595k1 c0595k2 = c0597l2.f11260Q;
                C0597l0.j(c0595k2);
                c0595k2.f11242K.A();
                k8.f10925Y = z8;
                c0597l2.r().s(new AtomicReference());
                break;
        }
    }
}
