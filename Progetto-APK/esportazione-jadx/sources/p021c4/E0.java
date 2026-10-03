package p021c4;

import B0.C0041c;
import E1.I;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class E0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10835G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ K0 f10836H;

    public /* synthetic */ E0(K0 k8, int i8) {
        this.f10835G = i8;
        this.f10836H = k8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f10835G;
        K0 k8 = this.f10836H;
        switch (i8) {
            case 0:
                k8.m();
                C0597l0 c0597l0 = (C0597l0) k8.f10616G;
                Z z7 = c0597l0.f11257N;
                C0597l0.i(z7);
                boolean zB = z7.f11104a0.b();
                T t7 = c0597l0.f11258O;
                if (zB) {
                    C0597l0.k(t7);
                    t7.f11046S.a("Deferred Deep Link already retrieved. Not fetching again.");
                } else {
                    Z z8 = c0597l0.f11257N;
                    C0597l0.i(z8);
                    I i9 = z8.f11105b0;
                    long jA = i9.a();
                    i9.b(1 + jA);
                    if (jA >= 5) {
                        C0597l0.k(t7);
                        t7.f11042O.a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                        z8.f11104a0.a(true);
                    } else {
                        if (k8.f10926Z == null) {
                            k8.f10926Z = new F0(k8, (C0597l0) k8.f10616G, 3);
                        }
                        k8.f10926Z.c(0L);
                    }
                }
                break;
            case 1:
                k8.u();
                break;
            case 2:
                C0594k0 c0594k0 = k8.f10924X;
                C0597l0 c0597l1 = c0594k0.f11239G;
                C0591j0 c0591j0 = c0597l1.f11259P;
                C0597l0.k(c0591j0);
                c0591j0.m();
                if (c0594k0.d()) {
                    boolean zE = c0594k0.e();
                    K0 k9 = c0597l1.f11265V;
                    Z z9 = c0597l1.f11257N;
                    if (zE) {
                        C0597l0.i(z9);
                        z9.f11107d0.o(null);
                        Bundle bundle = new Bundle();
                        bundle.putString("source", "(not set)");
                        bundle.putString("medium", "(not set)");
                        bundle.putString("_cis", "intent");
                        bundle.putLong("_cc", 1L);
                        C0597l0.j(k9);
                        k9.y("auto", "_cmpx", bundle);
                    } else {
                        C0597l0.i(z9);
                        C0041c c0041c = z9.f11107d0;
                        String strN = c0041c.n();
                        if (TextUtils.isEmpty(strN)) {
                            T t8 = c0597l1.f11258O;
                            C0597l0.k(t8);
                            t8.f11040M.a("Cache still valid but referrer not found");
                        } else {
                            long jA2 = z9.f11108e0.a() / 3600000;
                            Uri uri = Uri.parse(strN);
                            Bundle bundle2 = new Bundle();
                            Pair pair = new Pair(uri.getPath(), bundle2);
                            for (String str : uri.getQueryParameterNames()) {
                                bundle2.putString(str, uri.getQueryParameter(str));
                            }
                            ((Bundle) pair.second).putLong("_cc", (jA2 - 1) * 3600000);
                            Object obj = pair.first;
                            String str2 = obj == null ? "app" : (String) obj;
                            C0597l0.j(k9);
                            k9.y(str2, "_cmp", (Bundle) pair.second);
                        }
                        c0041c.o(null);
                    }
                    C0597l0.i(z9);
                    z9.f11108e0.b(0L);
                    break;
                }
                break;
            default:
                k8.u();
                break;
        }
    }
}
