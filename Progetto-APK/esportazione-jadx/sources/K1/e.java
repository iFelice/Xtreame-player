package K1;

import J6.C0205d;
import J6.C0212k;
import J6.G;
import J6.H;
import J6.r;
import N6.t;
import android.adservices.measurement.MeasurementManager;
import android.net.Uri;
import android.view.InputEvent;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f4459b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MeasurementManager f4460a;

    public e(MeasurementManager measurementManager) {
        q0.h(measurementManager, "mMeasurementManager");
        this.f4460a = measurementManager;
    }

    public static Object b(e eVar, a aVar, p185x6.e eVar2) {
        new C0205d(S3.e.h(eVar2)).l();
        MeasurementManager measurementManager = eVar.f4460a;
        throw null;
    }

    public static Object d(e eVar, p185x6.e eVar2) {
        C0205d c0205d = new C0205d(S3.e.h(eVar2));
        c0205d.l();
        eVar.f4460a.getMeasurementApiStatus(new p093m.a(5), new J.d(c0205d));
        return c0205d.k();
    }

    public static Object g(e eVar, f fVar, p185x6.e eVar2) throws Throwable {
        Object c0212k;
        Object objS;
        G g8;
        d dVar = new d(eVar, null);
        t tVar = new t(eVar2, eVar2.getContext());
        try {
            k.i(dVar);
            c0212k = dVar.c(tVar, tVar);
        } catch (Throwable th) {
            c0212k = new C0212k(false, th);
        }
        p192y6.a aVar = p192y6.a.f31454G;
        if (c0212k == aVar || (objS = tVar.s(c0212k)) == r.f4252e) {
            objS = aVar;
        } else {
            if (objS instanceof C0212k) {
                throw ((C0212k) objS).f4242a;
            }
            H h8 = objS instanceof H ? (H) objS : null;
            if (h8 != null && (g8 = h8.f4205a) != null) {
                objS = g8;
            }
        }
        return objS == aVar ? objS : p155t6.h.f30319a;
    }

    public static Object h(e eVar, Uri uri, InputEvent inputEvent, p185x6.e eVar2) {
        C0205d c0205d = new C0205d(S3.e.h(eVar2));
        c0205d.l();
        eVar.f4460a.registerSource(uri, inputEvent, new p093m.a(8), new J.d(c0205d));
        Object objK = c0205d.k();
        return objK == p192y6.a.f31454G ? objK : p155t6.h.f30319a;
    }

    public static Object j(e eVar, Uri uri, p185x6.e eVar2) {
        C0205d c0205d = new C0205d(S3.e.h(eVar2));
        c0205d.l();
        eVar.f4460a.registerTrigger(uri, new p093m.a(4), new J.d(c0205d));
        Object objK = c0205d.k();
        return objK == p192y6.a.f31454G ? objK : p155t6.h.f30319a;
    }

    public static Object l(e eVar, g gVar, p185x6.e eVar2) {
        new C0205d(S3.e.h(eVar2)).l();
        MeasurementManager measurementManager = eVar.f4460a;
        throw null;
    }

    public static Object n(e eVar, h hVar, p185x6.e eVar2) {
        new C0205d(S3.e.h(eVar2)).l();
        MeasurementManager measurementManager = eVar.f4460a;
        throw null;
    }

    public Object a(a aVar, p185x6.e eVar) {
        return b(this, aVar, eVar);
    }

    public Object c(p185x6.e eVar) {
        return d(this, eVar);
    }

    public Object e(f fVar, p185x6.e eVar) {
        return g(this, fVar, eVar);
    }

    public Object f(Uri uri, InputEvent inputEvent, p185x6.e eVar) {
        return h(this, uri, inputEvent, eVar);
    }

    public Object i(Uri uri, p185x6.e eVar) {
        return j(this, uri, eVar);
    }

    public Object k(g gVar, p185x6.e eVar) {
        return l(this, gVar, eVar);
    }

    public Object m(h hVar, p185x6.e eVar) {
        return n(this, hVar, eVar);
    }
}
