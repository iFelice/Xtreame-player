package J1;

import J6.AbstractC0225y;
import L1.g;
import L1.i;
import N6.p;
import O6.e;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.internal.measurement.H1;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f4093a;

    public b(i iVar) {
        this.f4093a = iVar;
    }

    public static final b a(Context context) {
        Object objInvoke;
        i gVar;
        Object objInvoke2;
        q0.h(context, "context");
        int i8 = Build.VERSION.SDK_INT;
        G1.b bVar = G1.b.f3394a;
        int i9 = 2;
        if ((i8 >= 33 ? bVar.a() : 0) >= 11) {
            gVar = new g(context, 2);
        } else {
            if ((i8 >= 33 ? bVar.a() : 0) >= 5) {
                gVar = new g(context, 4);
            } else if (i8 < 33 || bVar.a() != 4) {
                G1.a aVar = G1.a.f3393a;
                if (((i8 == 31 || i8 == 32) ? aVar.a() : 0) >= 11) {
                    try {
                        objInvoke2 = new K1.b(context, 1).invoke(context);
                    } catch (NoClassDefFoundError unused) {
                        StringBuilder sb = new StringBuilder("Unable to find adservices code, check manifest for uses-library tag, versionS=");
                        int i10 = Build.VERSION.SDK_INT;
                        sb.append((i10 == 31 || i10 == 32) ? aVar.a() : 0);
                        Log.d("TopicsManager", sb.toString());
                        objInvoke2 = null;
                    }
                    gVar = (i) objInvoke2;
                } else if ((i8 == 31 || i8 == 32) && aVar.a() >= 9) {
                    try {
                        objInvoke = new K1.b(context, i9).invoke(context);
                    } catch (NoClassDefFoundError unused2) {
                        StringBuilder sb2 = new StringBuilder("Unable to find adservices code, check manifest for uses-library tag, versionS=");
                        int i11 = Build.VERSION.SDK_INT;
                        sb2.append((i11 == 31 || i11 == 32) ? aVar.a() : 0);
                        Log.d("TopicsManager", sb2.toString());
                        objInvoke = null;
                    }
                    gVar = (i) objInvoke;
                } else {
                    gVar = null;
                }
            } else {
                gVar = new g(context, 3);
            }
        }
        if (gVar != null) {
            return new b(gVar);
        }
        return null;
    }

    public D4.b b(L1.b bVar) {
        q0.h(bVar, "request");
        e eVar = AbstractC0225y.f4262a;
        return H1.a(q0.d(k.a(p.f4994a), new a(this, bVar, null)));
    }
}
