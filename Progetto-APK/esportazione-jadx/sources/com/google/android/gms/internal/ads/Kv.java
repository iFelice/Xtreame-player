package com.google.android.gms.internal.ads;

import android.os.IInterface;
import android.os.RemoteException;
import p090l3.C3094n0;
import p090l3.InterfaceC3096o0;

/* JADX INFO: loaded from: classes.dex */
public final class Kv implements p189y3.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14433G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ IInterface f14434H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AbstractBinderC2328z5 f14435I;

    public /* synthetic */ Kv(AbstractBinderC2328z5 abstractBinderC2328z5, IInterface iInterface, int i8) {
        this.f14433G = i8;
        this.f14434H = iInterface;
        this.f14435I = abstractBinderC2328z5;
    }

    @Override // p189y3.a
    public final void i() {
        int i8 = this.f14433G;
        IInterface iInterface = this.f14434H;
        AbstractBinderC2328z5 abstractBinderC2328z5 = this.f14435I;
        switch (i8) {
            case 0:
                if (((Lv) abstractBinderC2328z5).f14588P != null) {
                    try {
                        C3094n0 c3094n0 = (C3094n0) ((InterfaceC3096o0) iInterface);
                        c3094n0.O2(1, c3094n0.j0());
                    } catch (RemoteException e8) {
                        p120p3.h.i("#007 Could not call remote method.", e8);
                        return;
                    }
                }
                break;
            default:
                if (((Mv) abstractBinderC2328z5).f14829J != null) {
                    try {
                        p090l3.M m7 = (p090l3.M) ((p090l3.N) iInterface);
                        m7.O2(1, m7.j0());
                    } catch (RemoteException e9) {
                        p120p3.h.i("#007 Could not call remote method.", e9);
                    }
                }
                break;
        }
    }
}
