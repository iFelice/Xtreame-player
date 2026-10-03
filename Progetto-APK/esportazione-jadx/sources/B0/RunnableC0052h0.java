package B0;

import C0.C0077b;
import C0.InterfaceC0076a;
import D0.AbstractC0111a;
import D0.C0124n;
import O0.C0300y;
import U0.C0352s;
import android.util.Pair;
import android.view.AttachedSurfaceControl;
import android.view.SurfaceView;
import android.window.SurfaceSyncGroup;
import com.google.android.gms.internal.measurement.H1;
import java.util.List;
import p094m0.C3136t;

/* JADX INFO: renamed from: B0.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0052h0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f960G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f961H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f962I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f963J;

    public /* synthetic */ RunnableC0052h0(Object obj, Object obj2, Object obj3, int i8) {
        this.f960G = i8;
        this.f961H = obj;
        this.f962I = obj2;
        this.f963J = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f960G;
        final int i9 = 0;
        Object obj = this.f963J;
        Object obj2 = this.f962I;
        Object obj3 = this.f961H;
        switch (i8) {
            case 0:
                C0054i0 c0054i0 = (C0054i0) obj3;
                C0300y c0300y = (C0300y) obj;
                c0054i0.getClass();
                z4.d0 d0VarM0 = ((z4.E) obj2).m0();
                C0.A a8 = (C0.A) c0054i0.f978c;
                p094m0.Y y7 = a8.f1232M;
                y7.getClass();
                C0.z zVar = a8.f1229J;
                zVar.getClass();
                zVar.f1337b = z4.H.s(d0VarM0);
                if (!d0VarM0.isEmpty()) {
                    zVar.f1340e = (C0300y) d0VarM0.get(0);
                    c0300y.getClass();
                    zVar.f1341f = c0300y;
                }
                if (zVar.f1339d == null) {
                    zVar.f1339d = C0.z.b(y7, zVar.f1337b, zVar.f1340e, zVar.f1336a);
                }
                zVar.d(((O) y7).x());
                return;
            case 1:
                Pair pair = (Pair) obj2;
                InterfaceC0076a interfaceC0076a = ((q0) obj3).f1063H.f1085h;
                C0.A a9 = (C0.A) interfaceC0076a;
                a9.N(((Integer) pair.first).intValue(), (C0300y) pair.second, (Exception) obj);
                return;
            case 2:
                C0124n c0124n = (C0124n) obj3;
                final C3136t c3136t = (C3136t) obj2;
                final C0055j c0055j = (C0055j) obj;
                c0124n.getClass();
                String str = p117p0.M.f28050a;
                O o4 = ((L) c0124n.f1962b).f743G;
                o4.getClass();
                C0.A a10 = (C0.A) o4.f790X;
                final C0077b c0077bT = a10.T();
                a10.U(c0077bT, 1009, new p117p0.u(c0077bT, c3136t, c0055j, i9) { // from class: C0.j

                    /* JADX INFO: renamed from: G, reason: collision with root package name */
                    public final /* synthetic */ int f1304G;

                    {
                        this.f1304G = i9;
                    }

                    @Override // p117p0.u
                    public final void invoke(Object obj4) {
                        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj4;
                        switch (this.f1304G) {
                            case 0:
                                interfaceC0078c.getClass();
                                break;
                            default:
                                interfaceC0078c.getClass();
                                break;
                        }
                    }
                });
                return;
            case 3:
                G0.o oVar = (G0.o) obj3;
                ((G0.p) obj2).N(oVar.f3374a, oVar.f3375b, (Exception) obj);
                return;
            case 4:
                C0352s c0352s = (C0352s) obj3;
                c0352s.getClass();
                C3136t c3136t2 = c0352s.f6841J;
                H1.j(c3136t2);
                ((U0.O) obj2).i(new U0.Q((p094m0.o0) obj, c3136t2));
                return;
            case 5:
                final C3136t c3136t3 = (C3136t) obj2;
                final C0055j c0055j2 = (C0055j) obj;
                U0.N n7 = (U0.N) ((com.google.android.gms.internal.atv_ads_framework.x0) obj3).f22391I;
                String str2 = p117p0.M.f28050a;
                O o7 = ((L) n7).f743G;
                o7.getClass();
                C0.A a11 = (C0.A) o7.f790X;
                final C0077b c0077bT2 = a11.T();
                final int i10 = 1;
                a11.U(c0077bT2, 1017, new p117p0.u(c0077bT2, c3136t3, c0055j2, i10) { // from class: C0.j

                    /* JADX INFO: renamed from: G, reason: collision with root package name */
                    public final /* synthetic */ int f1304G;

                    {
                        this.f1304G = i10;
                    }

                    @Override // p117p0.u
                    public final void invoke(Object obj4) {
                        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj4;
                        switch (this.f1304G) {
                            case 0:
                                interfaceC0078c.getClass();
                                break;
                            default:
                                interfaceC0078c.getClass();
                                break;
                        }
                    }
                });
                return;
            case 6:
                D1.H h8 = (D1.H) obj3;
                Runnable runnable = (Runnable) obj;
                h8.getClass();
                AttachedSurfaceControl rootSurfaceControl = ((SurfaceView) obj2).getRootSurfaceControl();
                if (rootSurfaceControl == null) {
                    return;
                }
                SurfaceSyncGroup surfaceSyncGroupN = A0.F.n();
                h8.f2064a = surfaceSyncGroupN;
                H1.i(surfaceSyncGroupN.add(rootSurfaceControl, new D1.G(0)));
                runnable.run();
                rootSurfaceControl.applyTransactionOnDraw(AbstractC0111a.d());
                return;
            default:
                z4.q0.h((P1.t) obj3, "this$0");
                z4.q0.h((String) obj2, "$sql");
                z4.q0.h((List) obj, "$inputArguments");
                throw null;
        }
    }
}
