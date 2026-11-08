package p021c4;

import F.i;
import com.google.android.gms.internal.measurement.K2;
import com.google.android.gms.internal.measurement.V1;
import java.util.HashMap;
import java.util.concurrent.Callable;
import p000a.r;

/* JADX INFO: renamed from: c4.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class CallableC0573d0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0579f0 f11143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f11144c;

    public /* synthetic */ CallableC0573d0(C0579f0 c0579f0, String str, int i8) {
        this.f11142a = i8;
        this.f11143b = c0579f0;
        this.f11144c = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i8 = this.f11142a;
        String str = this.f11144c;
        C0579f0 c0579f0 = this.f11143b;
        switch (i8) {
            case 0:
                return new K2(new i(c0579f0, str));
            case 1:
                return new V1(new CallableC0573d0(c0579f0, str, 2));
            default:
                C0602o c0602o = c0579f0.f11343H.f10654I;
                A1.I(c0602o);
                P pK0 = c0602o.k0(str);
                HashMap mapM = r.m("platform", "android", "package_name", str);
                ((C0597l0) c0579f0.f10616G).f11256M.u();
                mapM.put("gmp_version", 119002L);
                if (pK0 != null) {
                    String strE = pK0.e();
                    if (strE != null) {
                        mapM.put("app_version", strE);
                    }
                    mapM.put("app_version_int", Long.valueOf(pK0.S()));
                    mapM.put("dynamite_version", Long.valueOf(pK0.T()));
                }
                return mapM;
        }
    }
}
