package androidx.leanback.widget;

import Z5.AbstractC0460q;
import Z5.AbstractC0463u;
import android.content.Context;
import android.content.pm.PackageInfo;
import androidx.work.impl.foreground.SystemForegroundService;
import com.google.android.gms.internal.ads.C0744Ge;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.C1496j4;
import com.google.android.gms.internal.ads.InterfaceC0684Ce;
import com.google.android.gms.internal.ads.TextureViewSurfaceTextureListenerC0669Be;
import com.google.android.gms.internal.ads.TextureViewSurfaceTextureListenerC0975We;
import com.google.android.gms.internal.ads.V4;
import com.google.android.gms.internal.ads.XJ;
import com.google.android.gms.internal.ads.ZJ;
import com.google.android.gms.internal.measurement.H1;
import com.google.android.gms.internal.pal.A1;
import com.google.android.gms.internal.pal.C2765m0;
import com.google.android.gms.internal.pal.C2838v2;
import java.io.IOException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import pe.hf.black20.CatchupPlayerActivity;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes.dex */
public final class C implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9095G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f9096H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f9097I;

    public C(H3.x xVar, int i8) {
        this.f9095G = 2;
        this.f9097I = xVar;
        this.f9096H = i8;
    }

    @Override // java.lang.Runnable
    public final void run() throws IOException {
        C2765m0 c2765m0A;
        C2765m0 c2765m0 = null;
        C1496j4 c1496j4C = null;
        int i8 = 4;
        int i9 = 0;
        switch (this.f9095G) {
            case 0:
                SearchBar searchBar = (SearchBar) this.f9097I;
                searchBar.f9209c0.play(searchBar.f9210d0.get(this.f9096H), 1.0f, 1.0f, 1, 0, 1.0f);
                return;
            case 1:
                ((SystemForegroundService) this.f9097I).f9800K.cancel(this.f9096H);
                return;
            case 2:
                ((H3.x) this.f9097I).f3740c.b(this.f9096H);
                return;
            case 3:
                ((K3.z) this.f9097I).g(this.f9096H);
                return;
            case 4:
                int i10 = this.f9096H;
                V4 v5 = (V4) this.f9097I;
                if (i10 > 0) {
                    try {
                        Thread.sleep(i10 * 1000);
                        break;
                    } catch (InterruptedException unused) {
                    }
                }
                try {
                    PackageInfo packageInfo = v5.f16939a.getPackageManager().getPackageInfo(v5.f16939a.getPackageName(), 0);
                    Context context = v5.f16939a;
                    c1496j4C = H1.C(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
                    break;
                } catch (Throwable unused2) {
                }
                ((V4) this.f9097I).f16948j = c1496j4C;
                if (this.f9096H < 4) {
                    if (c1496j4C != null && c1496j4C.k0() && !c1496j4C.y0().equals("0000000000000000000000000000000000000000000000000000000000000000") && c1496j4C.l0() && c1496j4C.w0().D() && c1496j4C.w0().A() != -2) {
                        return;
                    }
                    V4 v7 = (V4) this.f9097I;
                    int i11 = this.f9096H + 1;
                    if (v7.f16952n) {
                        Future<?> futureSubmit = v7.f16940b.submit(new C(v7, i11, i8, i9));
                        if (i11 == 0) {
                            v7.f16949k = futureSubmit;
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                TextureViewSurfaceTextureListenerC0669Be textureViewSurfaceTextureListenerC0669Be = (TextureViewSurfaceTextureListenerC0669Be) this.f9097I;
                int i12 = this.f9096H;
                InterfaceC0684Ce interfaceC0684Ce = textureViewSurfaceTextureListenerC0669Be.f12398V;
                if (interfaceC0684Ce != null) {
                    ((C0744Ge) interfaceC0684Ce).onWindowVisibilityChanged(i12);
                    return;
                }
                return;
            case 6:
                TextureViewSurfaceTextureListenerC0975We textureViewSurfaceTextureListenerC0975We = (TextureViewSurfaceTextureListenerC0975We) this.f9097I;
                int i13 = this.f9096H;
                InterfaceC0684Ce interfaceC0684Ce2 = textureViewSurfaceTextureListenerC0975We.f17266L;
                if (interfaceC0684Ce2 != null) {
                    ((C0744Ge) interfaceC0684Ce2).onWindowVisibilityChanged(i13);
                    return;
                }
                return;
            case 7:
                ZJ zj = ((XJ) this.f9097I).f17408b;
                int i14 = this.f9096H;
                if (i14 == -3 || i14 == -2) {
                    if (i14 != -2) {
                        zj.c(4);
                        return;
                    } else {
                        zj.b(0);
                        zj.c(3);
                        return;
                    }
                }
                if (i14 == -1) {
                    zj.b(-1);
                    zj.a();
                    zj.c(1);
                    return;
                } else if (i14 != 1) {
                    p000a.r.p("Unknown focus change type: ", i14, "AudioFocusManager");
                    return;
                } else {
                    zj.c(2);
                    zj.b(1);
                    return;
                }
            case 8:
                A1 a8 = (A1) this.f9097I;
                int i15 = this.f9096H;
                if (i15 > 0) {
                    try {
                        Thread.sleep(i15 * 1000);
                        break;
                    } catch (InterruptedException unused3) {
                    }
                }
                try {
                    PackageInfo packageInfo2 = a8.f23425a.getPackageManager().getPackageInfo(a8.f23425a.getPackageName(), 0);
                    Context context2 = a8.f23425a;
                    try {
                        c2765m0A = (C2765m0) new C2838v2(context2, context2.getPackageName(), Integer.toString(packageInfo2.versionCode)).f24044d.poll(5000L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException unused4) {
                        c2765m0A = null;
                    }
                    if (c2765m0A == null) {
                        c2765m0A = C2838v2.a();
                    }
                    c2765m0 = c2765m0A;
                    break;
                } catch (Throwable unused5) {
                }
                ((A1) this.f9097I).f23434j = c2765m0;
                if (this.f9096H < 4) {
                    if (c2765m0 != null && c2765m0.U() && !c2765m0.e0().equals("0000000000000000000000000000000000000000000000000000000000000000") && c2765m0.V() && c2765m0.d0().p() && c2765m0.d0().m() != -2) {
                        return;
                    }
                    A1 a9 = (A1) this.f9097I;
                    int i16 = this.f9096H + 1;
                    if (a9.f23438n) {
                        Future<?> futureSubmit2 = a9.f23426b.submit(new C(a9, i16, 8, i9));
                        if (i16 == 0) {
                            a9.f23435k = futureSubmit2;
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 9:
                Object obj = this.f9097I;
                C1093bD c1093bD = (C1093bD) obj;
                if (((Z5.V) c1093bD.f18027I).k()) {
                    return;
                }
                try {
                    ((Z5.V) ((C1093bD) obj).f18027I).E(this.f9096H);
                    return;
                } catch (Throwable th) {
                    ((AbstractC0463u) c1093bD.f18026H).i(th);
                    ((Z5.V) c1093bD.f18027I).close();
                    return;
                }
            case 10:
                ((AbstractC0463u) this.f9097I).getClass();
                throw null;
            case 11:
                ((AbstractC0460q) this.f9097I).getClass();
                throw null;
            default:
                CatchupPlayerActivity catchupPlayerActivity = (CatchupPlayerActivity) this.f9097I;
                int iV = (int) catchupPlayerActivity.f28375z0.v();
                if (iV != catchupPlayerActivity.f28358i0) {
                    catchupPlayerActivity.f28350a0.setProgress(catchupPlayerActivity.f28357h0);
                    catchupPlayerActivity.f28344U.setText(Methods.a(catchupPlayerActivity.f28357h0));
                    catchupPlayerActivity.f28358i0 = iV;
                }
                if (catchupPlayerActivity.f28359j0.equals("playing") && catchupPlayerActivity.f28357h0 == catchupPlayerActivity.f28355f0) {
                    catchupPlayerActivity.e();
                }
                catchupPlayerActivity.f28352c0.postDelayed(catchupPlayerActivity.f28353d0, 1000L);
                return;
        }
    }

    public /* synthetic */ C(Object obj, int i8, int i9) {
        this.f9095G = i9;
        this.f9097I = obj;
        this.f9096H = i8;
    }

    public /* synthetic */ C(Object obj, int i8, int i9, int i10) {
        this.f9095G = i9;
        this.f9096H = i8;
        this.f9097I = obj;
    }

    public C(CatchupPlayerActivity catchupPlayerActivity) {
        this.f9095G = 12;
        this.f9097I = catchupPlayerActivity;
        this.f9096H = 0;
    }
}
