package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class Qo extends So {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Context f16135g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f16136h;

    public Qo(Context context, C1936re c1936re) {
        this.f16135g = context;
        this.f16136h = c1936re;
        this.f16531f = new C1706n6(context, p083k3.l.f25980A.f25998r.j(), this, this, 2);
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        synchronized (this.f16527b) {
            try {
                if (!this.f16529d) {
                    this.f16529d = true;
                    try {
                        try {
                            ((InterfaceC0817Lc) this.f16531f.getService()).n3(this.f16530e, new Ro(this));
                        } catch (Throwable th) {
                            p083k3.l.f25980A.f25987g.i("RemoteAdRequestClientTask.onConnected", th);
                            this.f16526a.c(new C1274ep(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
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
