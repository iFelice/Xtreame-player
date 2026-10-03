package com.google.ads.mediation;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.InterfaceC1416hb;
import p043f3.j;
import p090l3.InterfaceC3067a;
import p136r3.h;

/* JADX INFO: loaded from: classes.dex */
public final class b extends p043f3.b implements p051g3.b, InterfaceC3067a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final h f11624G;

    public b(AbstractAdViewAdapter abstractAdViewAdapter, h hVar) {
        this.f11624G = hVar;
    }

    @Override // p043f3.b
    public final void a() {
        p004a3.b bVar = (p004a3.b) this.f11624G;
        bVar.getClass();
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        p120p3.h.b("Adapter called onAdClosed.");
        try {
            ((InterfaceC1416hb) bVar.f8650H).a();
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // p043f3.b
    public final void b(j jVar) {
        ((p004a3.b) this.f11624G).g(jVar);
    }

    @Override // p043f3.b
    public final void d() {
        p004a3.b bVar = (p004a3.b) this.f11624G;
        bVar.getClass();
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        p120p3.h.b("Adapter called onAdLoaded.");
        try {
            ((InterfaceC1416hb) bVar.f8650H).k();
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // p043f3.b
    public final void e() {
        p004a3.b bVar = (p004a3.b) this.f11624G;
        bVar.getClass();
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        p120p3.h.b("Adapter called onAdOpened.");
        try {
            ((InterfaceC1416hb) bVar.f8650H).U1();
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // p051g3.b
    public final void o(String str, String str2) {
        p004a3.b bVar = (p004a3.b) this.f11624G;
        bVar.getClass();
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        p120p3.h.b("Adapter called onAppEvent.");
        try {
            ((InterfaceC1416hb) bVar.f8650H).s2(str, str2);
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // p043f3.b, p090l3.InterfaceC3067a
    public final void x() {
        p004a3.b bVar = (p004a3.b) this.f11624G;
        bVar.getClass();
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        p120p3.h.b("Adapter called onAdClicked.");
        try {
            ((InterfaceC1416hb) bVar.f8650H).b();
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }
}
