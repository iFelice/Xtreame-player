package p039f;

import N.N;
import N.U;
import android.view.ViewGroup;

/* JADX INFO: renamed from: f.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC3008x implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25126G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ K f25127H;

    public /* synthetic */ RunnableC3008x(K k8, int i8) {
        this.f25126G = i8;
        this.f25127H = k8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        int i8 = this.f25126G;
        K k8 = this.f25127H;
        switch (i8) {
            case 0:
                if ((1 & k8.f24933G0) != 0) {
                    k8.u(0);
                }
                if ((k8.f24933G0 & 4096) != 0) {
                    k8.u(108);
                }
                k8.f24932F0 = false;
                k8.f24933G0 = 0;
                break;
            default:
                k8.f24954c0.showAtLocation(k8.f24953b0, 55, 0, 0);
                U u7 = k8.f24956e0;
                if (u7 != null) {
                    u7.b();
                }
                if (!(k8.f24958g0 && (viewGroup = k8.f24959h0) != null && viewGroup.isLaidOut())) {
                    k8.f24953b0.setAlpha(1.0f);
                    k8.f24953b0.setVisibility(0);
                } else {
                    k8.f24953b0.setAlpha(0.0f);
                    U uA = N.a(k8.f24953b0);
                    uA.a(1.0f);
                    k8.f24956e0 = uA;
                    uA.d(new z(this, 0));
                }
                break;
        }
    }
}
