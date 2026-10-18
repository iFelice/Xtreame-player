package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ym, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1011Ym {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0781Il f17642a;

    public C1011Ym(C0781Il c0781Il) {
        this.f17642a = c0781Il;
    }

    public final void a() {
        p090l3.B0 b0J = this.f17642a.J();
        p090l3.D0 d0Zzi = null;
        if (b0J != null) {
            try {
                d0Zzi = b0J.zzi();
            } catch (RemoteException unused) {
            }
        }
        if (d0Zzi == null) {
            return;
        }
        try {
            d0Zzi.b();
        } catch (RemoteException e8) {
            p120p3.h.h("Unable to call onVideoEnd()", e8);
        }
    }

    public final void b() {
        p090l3.B0 b0J = this.f17642a.J();
        p090l3.D0 d0Zzi = null;
        if (b0J != null) {
            try {
                d0Zzi = b0J.zzi();
            } catch (RemoteException unused) {
            }
        }
        if (d0Zzi == null) {
            return;
        }
        try {
            d0Zzi.zzg();
        } catch (RemoteException e8) {
            p120p3.h.h("Unable to call onVideoEnd()", e8);
        }
    }

    public final void c() {
        p090l3.B0 b0J = this.f17642a.J();
        p090l3.D0 d0Zzi = null;
        if (b0J != null) {
            try {
                d0Zzi = b0J.zzi();
            } catch (RemoteException unused) {
            }
        }
        if (d0Zzi == null) {
            return;
        }
        try {
            d0Zzi.zzi();
        } catch (RemoteException e8) {
            p120p3.h.h("Unable to call onVideoEnd()", e8);
        }
    }
}
