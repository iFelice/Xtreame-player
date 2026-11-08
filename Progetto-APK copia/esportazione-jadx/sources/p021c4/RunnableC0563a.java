package p021c4;

import com.bumptech.glide.c;
import p132r.f;

/* JADX INFO: renamed from: c4.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0563a implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11113G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f11114H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f11115I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C0619x f11116J;

    public /* synthetic */ RunnableC0563a(C0619x c0619x, String str, long j8, int i8) {
        this.f11113G = i8;
        this.f11114H = str;
        this.f11115I = j8;
        this.f11116J = c0619x;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11113G;
        long j8 = this.f11115I;
        String str = this.f11114H;
        C0619x c0619x = this.f11116J;
        switch (i8) {
            case 0:
                c0619x.m();
                c.e(str);
                f fVar = c0619x.f11401I;
                if (fVar.isEmpty()) {
                    c0619x.f11402J = j8;
                }
                Integer num = (Integer) fVar.get(str);
                if (num != null) {
                    fVar.put(str, Integer.valueOf(num.intValue() + 1));
                } else if (fVar.f29684I < 100) {
                    fVar.put(str, 1);
                    c0619x.f11400H.put(str, Long.valueOf(j8));
                } else {
                    T t7 = ((C0597l0) c0619x.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11042O.a("Too many ads visible");
                }
                break;
            default:
                c0619x.m();
                c.e(str);
                f fVar2 = c0619x.f11401I;
                Integer num2 = (Integer) fVar2.get(str);
                if (num2 == null) {
                    T t8 = ((C0597l0) c0619x.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.b(str, "Call to endAdUnitExposure for unknown ad unit id");
                } else {
                    V0 v5 = ((C0597l0) c0619x.f10616G).f11264U;
                    C0597l0.j(v5);
                    S0 s0T = v5.t(false);
                    int iIntValue = num2.intValue() - 1;
                    if (iIntValue != 0) {
                        fVar2.put(str, Integer.valueOf(iIntValue));
                    } else {
                        fVar2.remove(str);
                        f fVar3 = c0619x.f11400H;
                        Long l4 = (Long) fVar3.get(str);
                        if (l4 == null) {
                            T t9 = ((C0597l0) c0619x.f10616G).f11258O;
                            C0597l0.k(t9);
                            t9.f11039L.a("First ad unit exposure time was never set");
                        } else {
                            long jLongValue = j8 - l4.longValue();
                            fVar3.remove(str);
                            c0619x.r(str, jLongValue, s0T);
                        }
                        if (fVar2.isEmpty()) {
                            long j9 = c0619x.f11402J;
                            if (j9 != 0) {
                                c0619x.q(j8 - j9, s0T);
                                c0619x.f11402J = 0L;
                            } else {
                                T t10 = ((C0597l0) c0619x.f10616G).f11258O;
                                C0597l0.k(t10);
                                t10.f11039L.a("First ad exposure time was never set");
                            }
                        }
                    }
                }
                break;
        }
    }
}
