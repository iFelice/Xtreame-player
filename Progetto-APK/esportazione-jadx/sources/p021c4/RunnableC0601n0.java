package p021c4;

import android.os.Bundle;

/* JADX INFO: renamed from: c4.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0601n0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11295G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f11296H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f11297I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ long f11298J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f11299K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f11300L;

    public /* synthetic */ RunnableC0601n0(Object obj, Object obj2, Object obj3, Object obj4, long j8, int i8) {
        this.f11295G = i8;
        this.f11296H = obj2;
        this.f11297I = obj3;
        this.f11299K = obj4;
        this.f11298J = j8;
        this.f11300L = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11295G;
        Object obj = this.f11299K;
        Object obj2 = this.f11297I;
        Object obj3 = this.f11296H;
        Object obj4 = this.f11300L;
        switch (i8) {
            case 0:
                String str = (String) obj3;
                if (str != null) {
                    S0 s7 = new S0(this.f11298J, (String) obj, str);
                    String str2 = (String) obj2;
                    A1 a8 = ((BinderC0608r0) obj4).f11346G;
                    a8.d().m();
                    String str3 = a8.f10684m0;
                    if (str3 != null) {
                        str3.equals(str2);
                    }
                    a8.f10684m0 = str2;
                    a8.f10683l0 = s7;
                } else {
                    String str4 = (String) obj2;
                    A1 a9 = ((BinderC0608r0) obj4).f11346G;
                    a9.d().m();
                    String str5 = a9.f10684m0;
                    if (str5 == null || str5.equals(str4)) {
                        a9.f10684m0 = str4;
                        a9.f10683l0 = null;
                    }
                }
                break;
            case 1:
                ((K0) obj4).J(this.f11298J, obj, (String) obj3, (String) obj2);
                break;
            default:
                V0 v5 = (V0) obj4;
                Bundle bundle = (Bundle) obj3;
                bundle.remove("screen_name");
                bundle.remove("screen_class");
                I1 i9 = ((C0597l0) v5.f10616G).f11261R;
                C0597l0.i(i9);
                v5.r((S0) obj2, (S0) obj, this.f11298J, true, i9.q("screen_view", bundle, null, false));
                break;
        }
    }
}
