package p113o3;

import A0.C0022w;
import J3.f;
import J3.k;
import android.content.Context;
import com.google.android.gms.internal.ads.AbstractC2118v3;
import com.google.android.gms.internal.ads.C2066u3;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.C2272y1;
import com.google.android.gms.internal.ads.C2274y3;
import com.google.android.gms.internal.ads.Ly;
import com.google.android.gms.internal.ads.Q7;
import java.io.File;
import java.util.regex.Pattern;
import p090l3.C3097p;
import p090l3.C3099q;
import p120p3.d;
import p135r2.l;

/* JADX INFO: renamed from: o3.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3155m extends C2218x {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Context f27984J;

    public C3155m(Context context, C2272y1 c2272y1) {
        super(c2272y1);
        this.f27984J = context;
    }

    public static l q(Context context) {
        C3155m c3155m = new C3155m(context, new C2272y1());
        File cacheDir = context.getCacheDir();
        int i8 = Ly.f14592d;
        l lVar = new l(new C0022w(new File(new File(cacheDir, "admob_volley").getPath())), c3155m);
        lVar.e();
        return lVar;
    }

    @Override // com.google.android.gms.internal.ads.C2218x, com.google.android.gms.internal.ads.InterfaceC1910r3
    public final C2066u3 c(AbstractC2118v3 abstractC2118v3) throws C2274y3 {
        if (abstractC2118v3.f21430H == 0) {
            String str = (String) C3099q.f26624d.f26627c.a(Q7.f15817e4);
            String str2 = abstractC2118v3.f21431I;
            if (Pattern.matches(str, str2)) {
                d dVar = C3097p.f26618f.f26619a;
                f fVar = f.f4145b;
                Context context = this.f27984J;
                if (fVar.c(context, 13400000) == 0) {
                    C2066u3 c2066u3C = new k(context).c(abstractC2118v3);
                    if (c2066u3C != null) {
                        I.k("Got gmscore asset response: ".concat(String.valueOf(str2)));
                        return c2066u3C;
                    }
                    I.k("Failed to get gmscore asset response: ".concat(String.valueOf(str2)));
                }
            }
        }
        return super.c(abstractC2118v3);
    }
}
