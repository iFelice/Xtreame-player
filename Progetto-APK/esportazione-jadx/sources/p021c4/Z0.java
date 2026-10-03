package p021c4;

import android.os.RemoteException;
import com.bumptech.glide.c;

/* JADX INFO: loaded from: classes.dex */
public final class Z0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11110G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ J1 f11111H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0574d1 f11112I;

    public Z0(C0574d1 c0574d1, J1 j8) {
        this.f11110G = 1;
        this.f11111H = j8;
        this.f11112I = c0574d1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11110G;
        J1 j8 = this.f11111H;
        C0574d1 c0574d1 = this.f11112I;
        switch (i8) {
            case 0:
                G g8 = c0574d1.f11146J;
                if (g8 != null) {
                    try {
                        c.h(j8);
                        g8.r3(j8);
                    } catch (RemoteException e8) {
                        T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11039L.b(e8, "Failed to reset data on the service: remote exception");
                    }
                    c0574d1.D();
                } else {
                    T t8 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.a("Failed to reset data on the service: not connected to service");
                }
                break;
            case 1:
                G g9 = c0574d1.f11146J;
                if (g9 == null) {
                    T t9 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11039L.a("Discarding data. Failed to send app launch");
                } else {
                    try {
                        c.h(j8);
                        C0597l0 c0597l0 = (C0597l0) c0574d1.f10616G;
                        C0584h c0584h = c0597l0.f11256M;
                        D d6 = E.f10802m1;
                        if (c0584h.B(null, d6)) {
                            c0574d1.t(g9, null, j8);
                        }
                        g9.M0(j8);
                        ((C0597l0) c0574d1.f10616G).o().t();
                        c0597l0.f11256M.B(null, d6);
                        c0574d1.t(g9, null, j8);
                        c0574d1.D();
                    } catch (RemoteException e9) {
                        T t10 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t10);
                        t10.f11039L.b(e9, "Failed to send app launch to the service");
                        return;
                    }
                }
                break;
            case 2:
                G g10 = c0574d1.f11146J;
                if (g10 == null) {
                    T t11 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t11);
                    t11.f11042O.a("Failed to send app backgrounded");
                } else {
                    try {
                        c.h(j8);
                        g10.t0(j8);
                        c0574d1.D();
                    } catch (RemoteException e10) {
                        T t12 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t12);
                        t12.f11039L.b(e10, "Failed to send app backgrounded to the service");
                        return;
                    }
                }
                break;
            case 3:
                G g11 = c0574d1.f11146J;
                if (g11 == null) {
                    T t13 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t13);
                    t13.f11039L.a("Failed to send measurementEnabled to service");
                } else {
                    try {
                        c.h(j8);
                        g11.R2(j8);
                        c0574d1.D();
                    } catch (RemoteException e11) {
                        T t14 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t14);
                        t14.f11039L.b(e11, "Failed to send measurementEnabled to the service");
                        return;
                    }
                }
                break;
            default:
                G g12 = c0574d1.f11146J;
                if (g12 == null) {
                    T t15 = ((C0597l0) c0574d1.f10616G).f11258O;
                    C0597l0.k(t15);
                    t15.f11039L.a("Failed to send consent settings to service");
                } else {
                    try {
                        c.h(j8);
                        g12.W0(j8);
                        c0574d1.D();
                    } catch (RemoteException e12) {
                        T t16 = ((C0597l0) c0574d1.f10616G).f11258O;
                        C0597l0.k(t16);
                        t16.f11039L.b(e12, "Failed to send consent settings to the service");
                    }
                }
                break;
        }
    }

    public /* synthetic */ Z0(C0574d1 c0574d1, J1 j8, int i8) {
        this.f11110G = i8;
        this.f11111H = j8;
        this.f11112I = c0574d1;
    }
}
