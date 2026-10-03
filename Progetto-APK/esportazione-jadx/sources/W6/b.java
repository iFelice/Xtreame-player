package W6;

import A0.O;
import T6.e;
import java.util.ArrayList;
import java.util.Iterator;
import p039f.H;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f7500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f7501d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f7502e;

    public b(T6.a aVar, boolean z7, float f8) {
        super(aVar);
        this.f7502e = new ArrayList();
        this.f7500c = z7;
        this.f7501d = f8;
    }

    public final void s(int i8) {
        T6.a aVar = (T6.a) this.f24905a;
        if (!(aVar instanceof e)) {
            O.G(aVar);
            throw null;
        }
        int i9 = ((V6.b) this.f24906b).f7218t0;
        char c8 = 0;
        int i10 = 0;
        while (i10 < i9) {
            double[] dArrF = f(i10);
            a(i10, dArrF);
            ((V6.b) this.f24906b).getClass();
            double d6 = dArrF[c8];
            double d8 = dArrF[1];
            double d9 = (d6 + d8) / 2.0d;
            double d10 = dArrF[2];
            double d11 = dArrF[3];
            double d12 = (d10 + d11) / 2.0d;
            double d13 = d8 - d6;
            double d14 = d11 - d10;
            if (this.f7500c) {
                V6.b bVar = (V6.b) this.f24906b;
                if (bVar.f7212n0 && (i8 == 1 || i8 == 0)) {
                    d13 /= (double) this.f7501d;
                }
                if (bVar.f7213o0 && (i8 == 2 || i8 == 0)) {
                    d14 /= (double) this.f7501d;
                }
            } else {
                V6.b bVar2 = (V6.b) this.f24906b;
                if (bVar2.f7212n0 && (i8 == 1 || i8 == 0)) {
                    d13 *= (double) this.f7501d;
                }
                if (bVar2.f7213o0 && (i8 == 2 || i8 == 0)) {
                    d14 *= (double) this.f7501d;
                }
            }
            double d15 = d14;
            ((V6.b) this.f24906b).getClass();
            ((V6.b) this.f24906b).getClass();
            double dMax = Math.max(d13, 0.0d);
            double dMax2 = Math.max(d15, 0.0d);
            Object obj = this.f24906b;
            if (((V6.b) obj).f7212n0 && (i8 == 1 || i8 == 0)) {
                double d16 = dMax / 2.0d;
                ((V6.b) obj).k(i10, d9 - d16);
                ((V6.b) this.f24906b).j(i10, d9 + d16);
            }
            Object obj2 = this.f24906b;
            if (((V6.b) obj2).f7213o0 && (i8 == 2 || i8 == 0)) {
                double d17 = dMax2 / 2.0d;
                ((V6.b) obj2).m(i10, d12 - d17);
                ((V6.b) this.f24906b).l(i10, d12 + d17);
            }
            i10++;
            c8 = 0;
        }
        synchronized (this) {
            Iterator it = this.f7502e.iterator();
            if (it.hasNext()) {
                O.I(it.next());
                throw null;
            }
        }
    }

    public final synchronized void t() {
        Iterator it = this.f7502e.iterator();
        if (it.hasNext()) {
            O.I(it.next());
            throw null;
        }
    }
}
