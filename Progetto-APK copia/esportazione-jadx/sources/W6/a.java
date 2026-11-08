package W6;

import A0.O;
import T6.e;
import java.util.ArrayList;
import java.util.Iterator;
import p039f.H;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f7499c;

    public a(T6.a aVar) {
        super(aVar);
        this.f7499c = new ArrayList();
    }

    public final void s(float f8, float f9, float f10, float f11) {
        T6.a aVar = (T6.a) this.f24905a;
        if (!(aVar instanceof e)) {
            O.G(aVar);
            throw null;
        }
        V6.b bVar = (V6.b) this.f24906b;
        int i8 = bVar.f7218t0;
        bVar.getClass();
        e eVar = (e) ((T6.a) this.f24905a);
        char c8 = 0;
        int i9 = 0;
        while (i9 < i8) {
            double[] dArrF = f(i9);
            a(i9, dArrF);
            double[] dArrV = eVar.v(f8, f9, i9);
            double[] dArrV2 = eVar.v(f10, f11, i9);
            double d6 = dArrV[c8] - dArrV2[c8];
            double d8 = dArrV[1] - dArrV2[1];
            double dAbs = Math.abs(dArrF[1] - dArrF[0]) / Math.abs(dArrF[3] - dArrF[2]);
            if (T6.a.j((V6.b) this.f24906b)) {
                double d9 = (-d8) * dAbs;
                d8 = d6 / dAbs;
                d6 = d9;
            }
            Object obj = this.f24906b;
            if (((V6.b) obj).f7210l0) {
                double d10 = dArrF[0] + d6;
                double d11 = d6 + dArrF[1];
                ((V6.b) obj).k(i9, d10);
                ((V6.b) this.f24906b).j(i9, d11);
            }
            Object obj2 = this.f24906b;
            if (((V6.b) obj2).f7211m0) {
                double d12 = dArrF[2] + d8;
                double d13 = dArrF[3] + d8;
                ((V6.b) obj2).m(i9, d12);
                ((V6.b) this.f24906b).l(i9, d13);
            }
            i9++;
            c8 = 0;
        }
        synchronized (this) {
            Iterator it = this.f7499c.iterator();
            if (it.hasNext()) {
                O.I(it.next());
                throw null;
            }
        }
    }
}
