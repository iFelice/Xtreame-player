package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class P extends E {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final IBinder f11808g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ AbstractC0631g f11809h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P(AbstractC0631g abstractC0631g, int i8, IBinder iBinder, Bundle bundle) {
        super(abstractC0631g, i8, bundle);
        this.f11809h = abstractC0631g;
        this.f11808g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.E
    public final void b(J3.b bVar) {
        AbstractC0631g abstractC0631g = this.f11809h;
        if (abstractC0631g.zzx != null) {
            abstractC0631g.zzx.onConnectionFailed(bVar);
        }
        abstractC0631g.onConnectionFailed(bVar);
    }

    @Override // com.google.android.gms.common.internal.E
    public final boolean c() {
        IBinder iBinder = this.f11808g;
        try {
            com.bumptech.glide.c.h(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            AbstractC0631g abstractC0631g = this.f11809h;
            if (!abstractC0631g.getServiceDescriptor().equals(interfaceDescriptor)) {
                Log.w("GmsClient", "service descriptor mismatch: " + abstractC0631g.getServiceDescriptor() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface iInterfaceCreateServiceInterface = abstractC0631g.createServiceInterface(iBinder);
            if (iInterfaceCreateServiceInterface == null || !(AbstractC0631g.zzn(abstractC0631g, 2, 4, iInterfaceCreateServiceInterface) || AbstractC0631g.zzn(abstractC0631g, 3, 4, iInterfaceCreateServiceInterface))) {
                return false;
            }
            abstractC0631g.zzC = null;
            Bundle connectionHint = abstractC0631g.getConnectionHint();
            if (abstractC0631g.zzw == null) {
                return true;
            }
            abstractC0631g.zzw.onConnected(connectionHint);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
