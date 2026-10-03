package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import p090l3.InterfaceC3113x0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ls, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1639ls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1795os f19864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InterfaceC3113x0 f19866c;

    public C1639ls(C1950rs c1950rs, String str) {
        this.f19864a = c1950rs;
        this.f19865b = str;
    }

    public final synchronized String a() {
        InterfaceC3113x0 interfaceC3113x0;
        try {
            interfaceC3113x0 = this.f19866c;
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
            return null;
        }
        return interfaceC3113x0 != null ? interfaceC3113x0.zzg() : null;
    }

    public final synchronized String b() {
        InterfaceC3113x0 interfaceC3113x0;
        try {
            interfaceC3113x0 = this.f19866c;
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
            return null;
        }
        return interfaceC3113x0 != null ? interfaceC3113x0.zzg() : null;
    }

    public final synchronized void c(p090l3.b1 b1Var, int i8) {
        this.f19866c = null;
        C1847ps c1847ps = new C1847ps(i8);
        C0864Of c0864Of = new C0864Of(this, 28);
        this.f19864a.b(b1Var, this.f19865b, c1847ps, c0864Of);
    }

    public final synchronized boolean d() {
        return this.f19864a.a();
    }
}
