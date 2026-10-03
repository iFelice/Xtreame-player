package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class To extends So {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Context f16741g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f16742h;

    public To(Context context, C1936re c1936re) {
        this.f16741g = context;
        this.f16742h = c1936re;
        this.f16531f = new C1706n6(context, p083k3.l.f25980A.f25998r.j(), this, this, 2);
    }

    public final D4.b c(C0973Wc c0973Wc) {
        synchronized (this.f16527b) {
            try {
                if (this.f16528c) {
                    return this.f16526a;
                }
                this.f16528c = true;
                this.f16530e = c0973Wc;
                this.f16531f.checkAvailabilityAndConnect();
                this.f16526a.a(new RunnableC1026Zn(this, 2), AbstractC1988se.f20911f);
                So.b(this.f16741g, this.f16526a, this.f16742h);
                return this.f16526a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        synchronized (this.f16527b) {
            try {
                if (!this.f16529d) {
                    this.f16529d = true;
                    try {
                        try {
                            ((InterfaceC0817Lc) this.f16531f.getService()).W1(this.f16530e, new Ro(this));
                        } catch (Throwable th) {
                            p083k3.l.f25980A.f25987g.i("RemoteSignalsClientTask.onConnected", th);
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
}
