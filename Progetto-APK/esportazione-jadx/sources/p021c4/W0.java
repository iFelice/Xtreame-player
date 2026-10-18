package p021c4;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class W0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11072G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0574d1 f11073H;

    public /* synthetic */ W0(C0574d1 c0574d1, int i8) {
        this.f11072G = i8;
        this.f11073H = c0574d1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11072G;
        C0574d1 c0574d1 = this.f11073H;
        switch (i8) {
            case 0:
                G g8 = c0574d1.f11146J;
                if (g8 == null) {
                    T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11039L.a("Failed to send storage consent settings to service");
                } else {
                    try {
                        g8.a0(c0574d1.B(false));
                        c0574d1.D();
                    } catch (RemoteException e8) {
                        T t8 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t8);
                        t8.f11039L.b(e8, "Failed to send storage consent settings to the service");
                        return;
                    }
                }
                break;
            case 1:
                G g9 = c0574d1.f11146J;
                if (g9 == null) {
                    T t9 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11039L.a("Failed to send Dma consent settings to service");
                } else {
                    try {
                        g9.t2(c0574d1.B(false));
                        c0574d1.D();
                    } catch (RemoteException e9) {
                        T t10 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t10);
                        t10.f11039L.b(e9, "Failed to send Dma consent settings to the service");
                        return;
                    }
                }
                break;
            default:
                c0574d1.q();
                break;
        }
    }
}
