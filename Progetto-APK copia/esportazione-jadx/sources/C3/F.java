package C3;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class F extends com.google.android.gms.common.api.j implements I {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final H3.b f1441w = new H3.b("CastClient", null);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final com.google.android.gms.common.api.g f1442x = new com.google.android.gms.common.api.g("Cast.API_CXLESS", new H3.r(1), H3.j.f3690a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f1443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public X3.d f1444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p052g4.i f1447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public p052g4.i f1448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final AtomicLong f1449g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f1450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f1451i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public C0104d f1452j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f1453k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public double f1454l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f1455m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1456n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1457o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public x f1458p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final CastDevice f1459q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final HashMap f1460r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final HashMap f1461s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final D3.I f1462t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final List f1463u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1464v;

    public F(Context context, C0105e c0105e) {
        super(context, f1442x, c0105e, com.google.android.gms.common.api.i.f11764c);
        this.f1443a = new E(this);
        this.f1450h = new Object();
        this.f1451i = new Object();
        this.f1463u = Collections.synchronizedList(new ArrayList());
        this.f1462t = c0105e.f1506c;
        this.f1459q = c0105e.f1505b;
        this.f1460r = new HashMap();
        this.f1461s = new HashMap();
        this.f1449g = new AtomicLong(0L);
        this.f1464v = 1;
        g();
    }

    public static void c(F f8, long j8, int i8) {
        p052g4.i iVar;
        synchronized (f8.f1460r) {
            HashMap map = f8.f1460r;
            Long lValueOf = Long.valueOf(j8);
            iVar = (p052g4.i) map.get(lValueOf);
            f8.f1460r.remove(lValueOf);
        }
        if (iVar != null) {
            if (i8 == 0) {
                iVar.b(null);
            } else {
                iVar.a(new com.google.android.gms.common.api.h(new Status(i8, null, null, null)));
            }
        }
    }

    public static void d(F f8, int i8) {
        synchronized (f8.f1451i) {
            try {
                p052g4.i iVar = f8.f1448f;
                if (iVar == null) {
                    return;
                }
                if (i8 == 0) {
                    iVar.b(new Status(0, null, null, null));
                } else {
                    iVar.a(new com.google.android.gms.common.api.h(new Status(i8, null, null, null)));
                }
                f8.f1448f = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* bridge */ /* synthetic */ Handler h(F f8) {
        if (f8.f1444b == null) {
            f8.f1444b = new X3.d(f8.getLooper(), 1);
        }
        return f8.f1444b;
    }

    public final void e() {
        f1441w.b("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.f1461s) {
            this.f1461s.clear();
        }
    }

    public final void f(int i8) {
        synchronized (this.f1450h) {
            try {
                p052g4.i iVar = this.f1447e;
                if (iVar != null) {
                    iVar.a(new com.google.android.gms.common.api.h(new Status(i8, null, null, null)));
                }
                this.f1447e = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        CastDevice castDevice = this.f1459q;
        if (castDevice.l(2048) || !castDevice.l(4) || castDevice.l(1)) {
            return;
        }
        "Chromecast Audio".equals(castDevice.f11682K);
    }
}
