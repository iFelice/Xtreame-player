package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ClientApi;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1644lx extends AbstractC2059tx {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ int f19881n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1644lx(ClientApi clientApi, Context context, int i8, InterfaceC1157cb interfaceC1157cb, p090l3.T0 t7, p090l3.O o4, ScheduledExecutorService scheduledExecutorService, C1696mx c1696mx, P3.a aVar, int i9) {
        super(clientApi, context, i8, interfaceC1157cb, t7, o4, scheduledExecutorService, c1696mx, aVar);
        this.f19881n = i9;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2059tx
    public final C1816pC a() {
        int i8 = this.f19881n;
        p090l3.T0 t7 = this.f21162e;
        Context context = this.f21159b;
        switch (i8) {
            case 0:
                C1816pC c1816pC = new C1816pC();
                p090l3.J jY2 = this.f21158a.Y2(new R3.b(context), p090l3.d1.i(), t7.f26500G, this.f21161d, this.f21160c);
                if (jY2 != null) {
                    try {
                        jY2.k2(new BinderC1592kx(this, c1816pC, t7));
                        jY2.h3(t7.f26502I);
                    } catch (RemoteException e8) {
                        p120p3.h.h("Failed to load app open ad.", e8);
                        c1816pC.g(new C1540jx());
                    }
                    break;
                } else {
                    c1816pC.g(new C1540jx());
                }
                return c1816pC;
            case 1:
                C1816pC c1816pC2 = new C1816pC();
                p090l3.J jZ1 = this.f21158a.Z1(new R3.b(context), new p090l3.d1(), t7.f26500G, this.f21161d, this.f21160c);
                if (jZ1 != null) {
                    try {
                        ((BinderC1587ks) jZ1).S2(t7.f26502I, new BinderC1748nx(this, c1816pC2, (BinderC1587ks) jZ1));
                    } catch (RemoteException e9) {
                        p120p3.h.h("Failed to load interstitial ad.", e9);
                        c1816pC2.g(new C1540jx());
                    }
                    break;
                } else {
                    c1816pC2.g(new C1540jx());
                }
                return c1816pC2;
            default:
                C1816pC c1816pC3 = new C1816pC();
                InterfaceC1884qd interfaceC1884qdE0 = this.f21158a.e0(new R3.b(context), t7.f26500G, this.f21161d, this.f21160c);
                BinderC2163vx binderC2163vx = new BinderC2163vx(this, c1816pC3, (Lv) interfaceC1884qdE0);
                if (interfaceC1884qdE0 != null) {
                    try {
                        ((Lv) interfaceC1884qdE0).A1(t7.f26502I, binderC2163vx);
                    } catch (RemoteException unused) {
                        p120p3.h.g("Failed to load rewarded ad.");
                        c1816pC3.g(new C1540jx());
                    }
                    break;
                } else {
                    c1816pC3.g(new C1540jx());
                }
                return c1816pC3;
        }
    }
}
