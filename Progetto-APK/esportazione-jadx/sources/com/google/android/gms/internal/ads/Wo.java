package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class Wo extends So {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f17321g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17322h;

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        synchronized (this.f16527b) {
            try {
                if (!this.f16529d) {
                    this.f16529d = true;
                    try {
                        int i8 = this.f17322h;
                        if (i8 == 2) {
                            ((InterfaceC0817Lc) this.f16531f.getService()).u2(this.f16530e, new Ro(this));
                        } else if (i8 == 3) {
                            ((InterfaceC0817Lc) this.f16531f.getService()).L1(this.f17321g, new Ro(this));
                        } else {
                            this.f16526a.c(new C1274ep(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.f16526a.c(new C1274ep(1));
                    } catch (Throwable th) {
                        p083k3.l.f25980A.f25987g.i("RemoteUrlAndCacheKeyClientTask.onConnected", th);
                        this.f16526a.c(new C1274ep(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.So, com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(J3.b bVar) {
        p120p3.h.b("Cannot connect to remote service, fallback to local instance.");
        this.f16526a.c(new C1274ep(1));
    }
}
