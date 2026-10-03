package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import p079k.RunnableC3015g;
import p090l3.C3069b;
import p090l3.C3093n;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ed, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0713Ed {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1884qd f13055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f13056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BinderC0698Dd f13057c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f13058d = System.currentTimeMillis();

    public C0713Ed(Context context, String str) {
        this.f13056b = context.getApplicationContext();
        C3093n c3093n = C3097p.f26618f.f26620b;
        BinderC1054ab binderC1054ab = new BinderC1054ab();
        c3093n.getClass();
        this.f13055a = (InterfaceC1884qd) new C3069b(context, str, binderC1054ab).d(context, false);
        this.f13057c = new BinderC0698Dd();
    }

    public static void a(Context context, String str, p043f3.f fVar, C2050to c2050to) {
        com.bumptech.glide.c.i(context, "Context cannot be null.");
        com.bumptech.glide.c.i(str, "AdUnitId cannot be null.");
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        Q7.a(context);
        if (((Boolean) AbstractC1812p8.f20429i.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                p120p3.b.f28201a.execute(new RunnableC3015g(context, str, fVar, c2050to, 7, 0));
                return;
            }
        }
        new C0713Ed(context, str).b(fVar.f25163a, c2050to);
    }

    public final void b(p090l3.G0 g8, C2050to c2050to) {
        try {
            InterfaceC1884qd interfaceC1884qd = this.f13055a;
            if (interfaceC1884qd != null) {
                g8.f26469k = this.f13058d;
                interfaceC1884qd.T1(p090l3.c1.a(this.f13056b, g8), new BinderC0653Ad(c2050to, this, 1));
            }
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }
}
