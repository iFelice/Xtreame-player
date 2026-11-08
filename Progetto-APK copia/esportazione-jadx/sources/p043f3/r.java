package p043f3;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.C0667Bc;
import p090l3.I0;
import p090l3.J;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25198G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ i f25199H;

    public /* synthetic */ r(i iVar, int i8) {
        this.f25198G = i8;
        this.f25199H = iVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f25198G;
        i iVar = this.f25199H;
        switch (i8) {
            case 0:
                try {
                    I0 i9 = iVar.f25183G;
                    i9.getClass();
                    try {
                        J j8 = i9.f26481i;
                        if (j8 != null) {
                            j8.t();
                        }
                    } catch (RemoteException e8) {
                        h.i("#007 Could not call remote method.", e8);
                        return;
                    }
                } catch (IllegalStateException e9) {
                    C0667Bc.a(iVar.getContext()).b("BaseAdView.resume", e9);
                    return;
                }
                C0667Bc.a(iVar.getContext()).b("BaseAdView.resume", e9);
                break;
            case 1:
                try {
                    I0 i10 = iVar.f25183G;
                    i10.getClass();
                    try {
                        J j9 = i10.f26481i;
                        if (j9 != null) {
                            j9.f();
                        }
                    } catch (RemoteException e10) {
                        h.i("#007 Could not call remote method.", e10);
                        return;
                    }
                } catch (IllegalStateException e11) {
                    C0667Bc.a(iVar.getContext()).b("BaseAdView.destroy", e11);
                    return;
                }
                C0667Bc.a(iVar.getContext()).b("BaseAdView.destroy", e11);
                break;
            default:
                try {
                    I0 i11 = iVar.f25183G;
                    i11.getClass();
                    try {
                        J j10 = i11.f26481i;
                        if (j10 != null) {
                            j10.y0();
                        }
                    } catch (RemoteException e12) {
                        h.i("#007 Could not call remote method.", e12);
                    }
                } catch (IllegalStateException e13) {
                    C0667Bc.a(iVar.getContext()).b("BaseAdView.pause", e13);
                    return;
                }
                break;
        }
    }
}
