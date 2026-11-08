package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.up, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2103up extends AbstractC2363zp {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0787Jc f21389h;

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final synchronized void onConnected(Bundle bundle) {
        if (this.f22200c) {
            return;
        }
        this.f22200c = true;
        try {
            ((InterfaceC0847Nc) this.f22201d.getService()).R1(this.f21389h, new BinderC2311yp(this));
        } catch (RemoteException unused) {
            this.f22198a.c(new C1274ep(1));
        } catch (Throwable th) {
            p083k3.l.f25980A.f25987g.i("RemoteAdsServiceProxyClientTask.onConnected", th);
            this.f22198a.c(th);
        }
    }
}
