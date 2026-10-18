package p039f;

import N.InterfaceC0269s;
import N.N;
import N.i0;
import android.view.View;
import android.view.Window;
import p079k.o;
import p079k.z;
import p086l.A0;
import p086l.InterfaceC3045o0;

/* JADX INFO: loaded from: classes.dex */
public final class y implements InterfaceC0269s, A0, InterfaceC3045o0, z {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25128G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ K f25129H;

    public /* synthetic */ y(K k8, int i8) {
        this.f25128G = i8;
        this.f25129H = k8;
    }

    @Override // p079k.z
    public final void d(o oVar, boolean z7) {
        J j8;
        int i8 = this.f25128G;
        K k8 = this.f25129H;
        switch (i8) {
            case 3:
                k8.q(oVar);
                break;
            default:
                o oVarK = oVar.k();
                int i9 = 0;
                boolean z8 = oVarK != oVar;
                if (z8) {
                    oVar = oVarK;
                }
                J[] jArr = k8.f24970s0;
                int length = jArr != null ? jArr.length : 0;
                while (true) {
                    if (i9 >= length) {
                        j8 = null;
                    } else {
                        j8 = jArr[i9];
                        if (j8 == null || j8.f24915h != oVar) {
                            i9++;
                        }
                    }
                }
                if (j8 != null) {
                    if (!z8) {
                        k8.r(j8, z7);
                    } else {
                        k8.p(j8.f24908a, j8, oVarK);
                        k8.r(j8, true);
                    }
                }
                break;
        }
    }

    @Override // N.InterfaceC0269s
    public final i0 k(View view, i0 i0Var) {
        int iD = i0Var.d();
        int iJ = this.f25129H.J(i0Var, null);
        if (iD != iJ) {
            i0Var = i0Var.f(i0Var.b(), iJ, i0Var.c(), i0Var.a());
        }
        return N.j(view, i0Var);
    }

    @Override // p079k.z
    public final boolean o(o oVar) {
        Window.Callback callback;
        int i8 = this.f25128G;
        K k8 = this.f25129H;
        switch (i8) {
            case 3:
                Window.Callback callback2 = k8.f24943R.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, oVar);
                }
                break;
            default:
                if (oVar == oVar.k() && k8.f24964m0 && (callback = k8.f24943R.getCallback()) != null && !k8.f24975x0) {
                    callback.onMenuOpened(108, oVar);
                }
                break;
        }
        return true;
    }
}
