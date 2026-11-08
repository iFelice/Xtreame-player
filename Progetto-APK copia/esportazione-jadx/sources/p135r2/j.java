package p135r2;

import K3.V;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import p021c4.C0574d1;
import p021c4.C0597l0;
import p021c4.K0;
import p021c4.S0;
import p021c4.T;
import p021c4.V0;
import p123p6.n;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class j implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f29809G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f29810H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f29811I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f29812J;

    public /* synthetic */ j(Object obj, Object obj2, long j8, int i8) {
        this.f29809G = i8;
        this.f29812J = obj;
        this.f29811I = obj2;
        this.f29810H = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f29809G) {
            case 0:
                k kVar = (k) this.f29812J;
                kVar.f29813G.a(this.f29810H, (String) this.f29811I);
                kVar.f29813G.b(kVar.toString());
                break;
            case 1:
                K0 k8 = (K0) this.f29811I;
                if (!TextUtils.isEmpty(((C0597l0) k8.f10616G).n().u())) {
                    T t7 = ((C0597l0) k8.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11044Q.a("Using developer consent only; google app id found");
                } else {
                    k8.D((Bundle) this.f29812J, 0, this.f29810H);
                }
                break;
            case 2:
                V0 v5 = (V0) this.f29812J;
                v5.s((S0) this.f29811I, false, this.f29810H);
                v5.f11064K = null;
                C0574d1 c0574d1R = ((C0597l0) v5.f10616G).r();
                c0574d1R.m();
                c0574d1R.n();
                c0574d1R.E(new V(14, c0574d1R, (Object) null));
                break;
            default:
                ((n) this.f29812J).getClass();
                n nVar = (n) this.f29812J;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                nVar.getClass();
                long jConvert = timeUnit.convert(System.currentTimeMillis(), timeUnit);
                long j8 = this.f29810H;
                if (j8 > jConvert) {
                    try {
                        Thread.sleep(j8 - jConvert);
                    } catch (InterruptedException e8) {
                        Thread.currentThread().interrupt();
                        q0.C(e8);
                        return;
                    }
                }
                ((n) this.f29812J).getClass();
                ((Runnable) this.f29811I).run();
                break;
        }
    }

    public /* synthetic */ j(Object obj, Object obj2, long j8, int i8, int i9) {
        this.f29809G = i8;
        this.f29811I = obj;
        this.f29812J = obj2;
        this.f29810H = j8;
    }
}
