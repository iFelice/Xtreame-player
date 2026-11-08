package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Locale;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2207wp extends AbstractC2363zp {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0757Hc f21750h;

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final synchronized void onConnected(Bundle bundle) {
        if (this.f22200c) {
            return;
        }
        this.f22200c = true;
        try {
            ((InterfaceC0847Nc) this.f22201d.getService()).o1(this.f21750h, new BinderC2311yp(this));
        } catch (RemoteException unused) {
            this.f22198a.c(new C1274ep(1));
        } catch (Throwable th) {
            p083k3.l.f25980A.f25987g.i("RemoteAdsServiceSignalClientTask.onConnected", th);
            this.f22198a.c(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2363zp, com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        Locale locale = Locale.US;
        String str = "Remote ad service connection suspended, cause: " + i8 + ".";
        p120p3.h.b(str);
        this.f22198a.c(new C1274ep(1, str));
    }
}
