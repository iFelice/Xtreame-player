package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1680mh implements InterfaceC0674Bj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1385gw f19981G;

    public C1680mh(C1385gw c1385gw) {
        this.f19981G = c1385gw;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void m(Context context) {
        try {
            C1385gw c1385gw = this.f19981G;
            c1385gw.getClass();
            try {
                c1385gw.f19025a.k();
            } catch (Throwable th) {
                throw new C1075aw(th);
            }
        } catch (C1075aw e8) {
            p120p3.h.h("Cannot invoke onDestroy for the mediation adapter.", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void p(Context context) {
        try {
            C1385gw c1385gw = this.f19981G;
            c1385gw.getClass();
            try {
                c1385gw.f19025a.A0();
            } catch (Throwable th) {
                throw new C1075aw(th);
            }
        } catch (C1075aw e8) {
            p120p3.h.h("Cannot invoke onPause for the mediation adapter.", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0674Bj
    public final void q(Context context) {
        C1385gw c1385gw = this.f19981G;
        try {
            c1385gw.getClass();
            try {
                c1385gw.f19025a.j();
                if (context != null) {
                    c1385gw.getClass();
                    try {
                        c1385gw.f19025a.i0(new R3.b(context));
                    } catch (Throwable th) {
                        throw new C1075aw(th);
                    }
                }
            } catch (Throwable th2) {
                throw new C1075aw(th2);
            }
        } catch (C1075aw e8) {
            p120p3.h.h("Cannot invoke onResume for the mediation adapter.", e8);
        }
    }
}
