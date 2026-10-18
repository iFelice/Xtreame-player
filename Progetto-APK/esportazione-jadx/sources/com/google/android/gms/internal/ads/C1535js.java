package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import p090l3.InterfaceC3067a;
import p090l3.InterfaceC3104t;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.js, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1535js implements InterfaceC3067a, InterfaceC0869Ok {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public InterfaceC3104t f19518G;

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final synchronized void q() {
        InterfaceC3104t interfaceC3104t = this.f19518G;
        if (interfaceC3104t != null) {
            try {
                interfaceC3104t.zzb();
            } catch (RemoteException e8) {
                p120p3.h.h("Remote Exception at onPhysicalClick.", e8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final synchronized void u() {
    }

    @Override // p090l3.InterfaceC3067a
    public final synchronized void x() {
        InterfaceC3104t interfaceC3104t = this.f19518G;
        if (interfaceC3104t != null) {
            try {
                interfaceC3104t.zzb();
            } catch (RemoteException e8) {
                p120p3.h.h("Remote Exception at onAdClicked.", e8);
            }
        }
    }
}
