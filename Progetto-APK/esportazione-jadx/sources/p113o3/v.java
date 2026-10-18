package p113o3;

import A0.C0022w;
import F.i;
import android.content.Context;
import com.google.android.gms.internal.ads.C1651m3;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.C2272y1;
import com.google.android.gms.internal.ads.Q7;
import java.util.HashMap;
import java.util.Map;
import p090l3.C3099q;
import p096m2.o;
import p120p3.g;
import p120p3.h;
import p135r2.l;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static l f28001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f28002b = new Object();

    public v(Context context) {
        l lVar;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (f28002b) {
            try {
                if (f28001a == null) {
                    Q7.a(context);
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15809d4)).booleanValue()) {
                        lVar = C3155m.q(context);
                    } else {
                        lVar = new l(new C0022w(new C2218x(context.getApplicationContext())), new C2218x(new C2272y1()));
                        lVar.e();
                    }
                    f28001a = lVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static C3161t a(int i8, String str, HashMap map, byte[] bArr) {
        C3161t c3161t = new C3161t();
        i iVar = new i(str, c3161t);
        g gVar = new g();
        C3160s c3160s = new C3160s(i8, str, c3161t, iVar, bArr, map, gVar);
        if (g.c()) {
            try {
                Map mapC = c3160s.c();
                if (bArr == null) {
                    bArr = null;
                }
                if (g.c()) {
                    o oVar = new o();
                    oVar.f27236G = str;
                    oVar.f27237H = "GET";
                    oVar.f27238I = mapC;
                    oVar.f27239J = bArr;
                    gVar.d("onNetworkRequest", oVar);
                }
            } catch (C1651m3 e8) {
                h.g(e8.getMessage());
            }
        }
        f28001a.c(c3160s);
        return c3161t;
    }
}
