package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public final class O implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f11806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0631g f11807b;

    public O(AbstractC0631g abstractC0631g, int i8) {
        this.f11807b = abstractC0631g;
        this.f11806a = i8;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        AbstractC0631g abstractC0631g = this.f11807b;
        if (iBinder == null) {
            AbstractC0631g.zzk(abstractC0631g, 16);
            return;
        }
        synchronized (abstractC0631g.zzq) {
            try {
                AbstractC0631g abstractC0631g2 = this.f11807b;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                abstractC0631g2.zzr = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0639o)) ? new G(iBinder) : (InterfaceC0639o) iInterfaceQueryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f11807b.zzl(0, null, this.f11806a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f11807b.zzq) {
            this.f11807b.zzr = null;
        }
        AbstractC0631g abstractC0631g = this.f11807b;
        int i8 = this.f11806a;
        Handler handler = abstractC0631g.zzb;
        handler.sendMessage(handler.obtainMessage(6, i8, 1));
    }
}
