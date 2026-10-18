package I1;

import J6.AbstractC0225y;
import K1.e;
import K1.f;
import K1.g;
import K1.h;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import android.view.InputEvent;
import com.google.android.gms.internal.measurement.H1;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f4004a;

    public d(e eVar) {
        this.f4004a = eVar;
    }

    public static final d b(Context context) {
        Object objInvoke;
        e cVar;
        q0.h(context, "context");
        StringBuilder sb = new StringBuilder("AdServicesInfo.version=");
        int i8 = Build.VERSION.SDK_INT;
        G1.b bVar = G1.b.f3394a;
        int i9 = 0;
        sb.append(i8 >= 33 ? bVar.a() : 0);
        Log.d("MeasurementManager", sb.toString());
        if (i8 < 33 || bVar.a() < 5) {
            G1.a aVar = G1.a.f3393a;
            if ((i8 == 31 || i8 == 32) && aVar.a() >= 9) {
                try {
                    objInvoke = new K1.b(context, i9).invoke(context);
                } catch (NoClassDefFoundError unused) {
                    StringBuilder sb2 = new StringBuilder("Unable to find adservices code, check manifest for uses-library tag, versionS=");
                    int i10 = Build.VERSION.SDK_INT;
                    sb2.append((i10 == 31 || i10 == 32) ? aVar.a() : 0);
                    Log.d("MeasurementManager", sb2.toString());
                    objInvoke = null;
                }
                cVar = (e) objInvoke;
            } else {
                cVar = null;
            }
        } else {
            cVar = new K1.c(context, 1);
        }
        if (cVar != null) {
            return new d(cVar);
        }
        return null;
    }

    public D4.b a(K1.a aVar) {
        q0.h(aVar, "deletionRequest");
        throw null;
    }

    public D4.b c() {
        return H1.a(q0.d(k.a(AbstractC0225y.f4262a), new a(this, null)));
    }

    public D4.b d(f fVar) {
        q0.h(fVar, "request");
        throw null;
    }

    public D4.b e(Uri uri, InputEvent inputEvent) {
        q0.h(uri, "attributionSource");
        return H1.a(q0.d(k.a(AbstractC0225y.f4262a), new b(this, uri, inputEvent, null)));
    }

    public D4.b f(Uri uri) {
        q0.h(uri, "trigger");
        return H1.a(q0.d(k.a(AbstractC0225y.f4262a), new c(this, uri, null)));
    }

    public D4.b g(g gVar) {
        q0.h(gVar, "request");
        throw null;
    }

    public D4.b h(h hVar) {
        q0.h(hVar, "request");
        throw null;
    }
}
