package com.google.ads.mediation;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.BinderC2258xo;
import com.google.android.gms.internal.ads.C1347g9;
import com.google.android.gms.internal.ads.InterfaceC1416hb;
import p043f3.j;
import p120p3.h;
import p136r3.l;

/* JADX INFO: loaded from: classes.dex */
public final class d extends p043f3.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11627G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f11628H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f11629I;

    public d(AbstractAdViewAdapter abstractAdViewAdapter, l lVar) {
        this.f11628H = abstractAdViewAdapter;
        this.f11629I = lVar;
    }

    @Override // p043f3.b
    public final void a() {
        switch (this.f11627G) {
            case 0:
                p004a3.b bVar = (p004a3.b) ((l) this.f11629I);
                bVar.getClass();
                com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
                h.b("Adapter called onAdClosed.");
                try {
                    ((InterfaceC1416hb) bVar.f8650H).a();
                } catch (RemoteException e8) {
                    h.i("#007 Could not call remote method.", e8);
                    return;
                }
                break;
        }
    }

    @Override // p043f3.b
    public final void b(j jVar) {
        int i8 = this.f11627G;
        Object obj = this.f11629I;
        switch (i8) {
            case 0:
                ((p004a3.b) ((l) obj)).i(jVar);
                break;
            default:
                ((BinderC2258xo) obj).E3(BinderC2258xo.D3(jVar), (String) this.f11628H);
                break;
        }
    }

    @Override // p043f3.b
    public final void c() {
        switch (this.f11627G) {
            case 0:
                p004a3.b bVar = (p004a3.b) ((l) this.f11629I);
                bVar.getClass();
                com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
                a aVar = (a) bVar.f8651I;
                if (((C1347g9) bVar.f8652J) == null) {
                    if (aVar == null) {
                        h.i("#007 Could not call remote method.", null);
                    } else if (!aVar.f11622m) {
                        h.b("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                    }
                }
                h.b("Adapter called onAdImpression.");
                try {
                    ((InterfaceC1416hb) bVar.f8650H).zzm();
                } catch (RemoteException e8) {
                    h.i("#007 Could not call remote method.", e8);
                    return;
                }
                break;
        }
    }

    @Override // p043f3.b
    public final void d() {
    }

    @Override // p043f3.b
    public final void e() {
        switch (this.f11627G) {
            case 0:
                p004a3.b bVar = (p004a3.b) ((l) this.f11629I);
                bVar.getClass();
                com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
                h.b("Adapter called onAdOpened.");
                try {
                    ((InterfaceC1416hb) bVar.f8650H).U1();
                } catch (RemoteException e8) {
                    h.i("#007 Could not call remote method.", e8);
                    return;
                }
                break;
        }
    }

    @Override // p043f3.b, p090l3.InterfaceC3067a
    public final void x() {
        switch (this.f11627G) {
            case 0:
                p004a3.b bVar = (p004a3.b) ((l) this.f11629I);
                bVar.getClass();
                com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
                a aVar = (a) bVar.f8651I;
                if (((C1347g9) bVar.f8652J) == null) {
                    if (aVar == null) {
                        h.i("#007 Could not call remote method.", null);
                    } else if (!aVar.f11623n) {
                        h.b("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                    }
                }
                h.b("Adapter called onAdClicked.");
                try {
                    ((InterfaceC1416hb) bVar.f8650H).b();
                } catch (RemoteException e8) {
                    h.i("#007 Could not call remote method.", e8);
                    return;
                }
                break;
        }
    }

    public d(BinderC2258xo binderC2258xo, String str) {
        this.f11628H = str;
        this.f11629I = binderC2258xo;
    }
}
