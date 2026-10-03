package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC2617p2;
import p090l3.C3085j;
import p090l3.C3093n;
import p090l3.C3097p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ra, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1932ra extends p128q3.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f20738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p090l3.c1 f20739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p090l3.J f20740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f20741d;

    public C1932ra(Context context, String str) {
        BinderC1054ab binderC1054ab = new BinderC1054ab();
        this.f20741d = System.currentTimeMillis();
        this.f20738a = context;
        this.f20739b = p090l3.c1.f26545a;
        C3093n c3093n = C3097p.f26618f.f26620b;
        p090l3.d1 d1Var = new p090l3.d1();
        c3093n.getClass();
        this.f20740c = (p090l3.J) new C3085j(c3093n, context, d1Var, str, binderC1054ab).d(context, false);
    }

    @Override // p128q3.a
    public final void b(Activity activity) {
        if (activity == null) {
            p120p3.h.g("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            p090l3.J j8 = this.f20740c;
            if (j8 != null) {
                j8.D2(new R3.b(activity));
            }
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    public final void c(p090l3.G0 g8, AbstractC2617p2 abstractC2617p2) {
        try {
            p090l3.J j8 = this.f20740c;
            if (j8 != null) {
                g8.f26469k = this.f20741d;
                p090l3.c1 c1Var = this.f20739b;
                Context context = this.f20738a;
                c1Var.getClass();
                j8.S2(p090l3.c1.a(context, g8), new p090l3.Z0(abstractC2617p2, this));
            }
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
            abstractC2617p2.h(new p043f3.j(0, "Internal Error.", "com.google.android.gms.ads", null, null));
        }
    }
}
