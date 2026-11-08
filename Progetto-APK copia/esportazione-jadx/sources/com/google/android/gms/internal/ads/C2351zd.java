package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import p079k.RunnableC3015g;
import p090l3.C3069b;
import p090l3.C3093n;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2351zd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1884qd f22168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f22169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BinderC0698Dd f22170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f22171d;

    public C2351zd(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        C3093n c3093n = C3097p.f26618f.f26620b;
        BinderC1054ab binderC1054ab = new BinderC1054ab();
        c3093n.getClass();
        InterfaceC1884qd interfaceC1884qd = (InterfaceC1884qd) new C3069b(context, str, binderC1054ab).d(context, false);
        BinderC0698Dd binderC0698Dd = new BinderC0698Dd();
        this.f22171d = System.currentTimeMillis();
        this.f22169b = applicationContext.getApplicationContext();
        this.f22168a = interfaceC1884qd;
        this.f22170c = binderC0698Dd;
    }

    public static void a(Context context, String str, p043f3.f fVar, C2050to c2050to) {
        com.bumptech.glide.c.i(context, "Context cannot be null.");
        com.bumptech.glide.c.i(str, "AdUnitId cannot be null.");
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        Q7.a(context);
        if (((Boolean) AbstractC1812p8.f20429i.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                p120p3.b.f28201a.execute(new RunnableC3015g(context, str, fVar, c2050to, 6, 0));
                return;
            }
        }
        p120p3.h.b("Loading on UI thread");
        new C2351zd(context, str).b(fVar.f25163a, c2050to);
    }

    public final void b(p090l3.G0 g8, C2050to c2050to) {
        try {
            InterfaceC1884qd interfaceC1884qd = this.f22168a;
            if (interfaceC1884qd != null) {
                g8.f26469k = this.f22171d;
                interfaceC1884qd.A1(p090l3.c1.a(this.f22169b, g8), new BinderC0653Ad(c2050to, this, 0));
            }
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }
}
