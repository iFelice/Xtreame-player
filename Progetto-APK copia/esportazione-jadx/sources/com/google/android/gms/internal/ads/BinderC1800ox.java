package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ox, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1800ox extends p090l3.P {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1904qx f20360G;

    public BinderC1800ox(C1904qx c1904qx) {
        super("com.google.android.gms.ads.internal.client.IAdPreloader");
        this.f20360G = c1904qx;
    }

    public final InterfaceC1884qd A3(String str) {
        InterfaceC1884qd interfaceC1884qd;
        C1904qx c1904qx = this.f20360G;
        synchronized (c1904qx) {
            interfaceC1884qd = (InterfaceC1884qd) c1904qx.d(InterfaceC1884qd.class, str, p043f3.a.REWARDED).orElse(null);
        }
        return interfaceC1884qd;
    }

    public final synchronized void B3(ArrayList arrayList, p090l3.O o4) {
        this.f20360G.b(arrayList, o4);
    }

    public final boolean C3(String str) {
        boolean zF;
        C1904qx c1904qx = this.f20360G;
        synchronized (c1904qx) {
            zF = c1904qx.f(str, p043f3.a.APP_OPEN_AD);
        }
        return zF;
    }

    public final boolean D3(String str) {
        boolean zF;
        C1904qx c1904qx = this.f20360G;
        synchronized (c1904qx) {
            zF = c1904qx.f(str, p043f3.a.INTERSTITIAL);
        }
        return zF;
    }

    public final boolean E3(String str) {
        boolean zF;
        C1904qx c1904qx = this.f20360G;
        synchronized (c1904qx) {
            zF = c1904qx.f(str, p043f3.a.REWARDED);
        }
        return zF;
    }

    public final InterfaceC1137c6 z3(String str) {
        InterfaceC1137c6 interfaceC1137c6;
        C1904qx c1904qx = this.f20360G;
        synchronized (c1904qx) {
            interfaceC1137c6 = (InterfaceC1137c6) c1904qx.d(InterfaceC1137c6.class, str, p043f3.a.APP_OPEN_AD).orElse(null);
        }
        return interfaceC1137c6;
    }
}
