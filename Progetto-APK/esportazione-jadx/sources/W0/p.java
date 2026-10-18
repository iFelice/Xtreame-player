package W0;

import A1.C0026a;
import A1.C0028c;
import A1.C0030e;
import A1.C0032g;
import N.C0260i;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class p implements v {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final int[] f7448I = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final p096m2.u f7449J = new p096m2.u(new C0260i(20));

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final p096m2.u f7450K = new p096m2.u(new C0260i(21));

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public d0 f7451G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final F2.G f7452H = new F2.G(3);

    @Override // W0.v
    public final synchronized s[] a(Uri uri, Map map) {
        ArrayList arrayList;
        try {
            int[] iArr = f7448I;
            arrayList = new ArrayList(21);
            List list = (List) map.get("Content-Type");
            int iK = Z3.H.k((list == null || list.isEmpty()) ? null : (String) list.get(0));
            if (iK != -1) {
                b(iK, arrayList);
            }
            int iL = Z3.H.l(uri);
            if (iL != -1 && iL != iK) {
                b(iL, arrayList);
            }
            for (int i8 = 0; i8 < 21; i8++) {
                int i9 = iArr[i8];
                if (i9 != iK && i9 != iL) {
                    b(i9, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (s[]) arrayList.toArray(new s[0]);
    }

    public final void b(int i8, ArrayList arrayList) {
        F2.G g8 = this.f7452H;
        switch (i8) {
            case 0:
                arrayList.add(new C0026a());
                break;
            case 1:
                arrayList.add(new C0028c());
                break;
            case 2:
                arrayList.add(new C0030e());
                break;
            case 3:
                arrayList.add(new X0.a());
                break;
            case 4:
                s sVarU = f7449J.u(0);
                if (sVarU == null) {
                    arrayList.add(new p010b1.b());
                } else {
                    arrayList.add(sVarU);
                }
                break;
            case 5:
                arrayList.add(new p018c1.b());
                break;
            case 6:
                arrayList.add(new p095m1.d(0, g8));
                break;
            case 7:
                arrayList.add(new p103n1.d());
                break;
            case 8:
                arrayList.add(new p111o1.i(p111o1.i.a(0), g8));
                arrayList.add(new p111o1.l(0, g8));
                break;
            case 9:
                arrayList.add(new p118p1.e());
                break;
            case 10:
                arrayList.add(new A1.A());
                break;
            case 11:
                if (this.f7451G == null) {
                    z4.F f8 = z4.H.f31804H;
                    this.f7451G = d0.f31844K;
                }
                arrayList.add(new A1.F(1, 0, g8, new p117p0.J(0L), new C0032g(0, this.f7451G)));
                break;
            case 12:
                arrayList.add(new B1.d());
                break;
            case 14:
                arrayList.add(new p002a1.a(0));
                break;
            case 15:
                s sVarU2 = f7450K.u(new Object[0]);
                if (sVarU2 != null) {
                    arrayList.add(sVarU2);
                }
                break;
            case 16:
                arrayList.add(new Y0.b(g8));
                break;
            case 17:
                arrayList.add(new p002a1.a(1, 0));
                break;
            case 18:
                arrayList.add(new Z0.a(2));
                break;
            case 19:
                arrayList.add(new p002a1.a(0, 0));
                break;
            case 20:
                arrayList.add(new Z0.a(1));
                break;
            case 21:
                arrayList.add(new Z0.a(0));
                break;
        }
    }
}
