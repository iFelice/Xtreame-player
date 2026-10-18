package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1379gq extends TimerTask {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19007G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Timer f19008H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f19009I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f19010J;

    public C1379gq(AlertDialog alertDialog, Timer timer, p105n3.k kVar) {
        this.f19009I = alertDialog;
        this.f19008H = timer;
        this.f19010J = kVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        int i8 = this.f19007G;
        Timer timer = this.f19008H;
        Object obj = this.f19010J;
        Object obj2 = this.f19009I;
        switch (i8) {
            case 0:
                ((AlertDialog) obj2).dismiss();
                timer.cancel();
                p105n3.k kVar = (p105n3.k) obj;
                if (kVar != null) {
                    kVar.zzb();
                    return;
                }
                return;
            default:
                Bx bx = (Bx) obj2;
                bx.getClass();
                int i9 = p011b2.e.f9832a;
                if (!p019c2.n.f10637d.b()) {
                    throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                }
                ((WebViewProviderBoundaryInterface) p011b2.e.c(bx.f12518b).f1868H).removeWebMessageListener("omidJsSessionService");
                C0892Qf c0892Qf = (C0892Qf) ((C0864Of) obj).f15180H;
                c0892Qf.getClass();
                p113o3.J j8 = p113o3.O.f27924l;
                InterfaceC0715Ef interfaceC0715Ef = c0892Qf.f16040G;
                Objects.requireNonNull(interfaceC0715Ef);
                j8.post(new RunnableC0850Nf(interfaceC0715Ef, 0));
                timer.cancel();
                return;
        }
    }

    public C1379gq(Bx bx, C0864Of c0864Of, Timer timer) {
        this.f19010J = c0864Of;
        this.f19008H = timer;
        this.f19009I = bx;
    }
}
