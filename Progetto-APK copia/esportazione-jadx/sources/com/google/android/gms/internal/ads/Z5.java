package com.google.android.gms.internal.ads;

import android.content.Context;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Z5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1137c6 f17728a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BinderC1034a6 f17729b = new BinderC1034a6("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");

    public Z5(InterfaceC1137c6 interfaceC1137c6) {
        this.f17728a = interfaceC1137c6;
    }

    public static void a(Context context, String str, p043f3.f fVar, C2050to c2050to) {
        com.bumptech.glide.c.i(context, "Context cannot be null.");
        com.bumptech.glide.c.i(str, "adUnitId cannot be null.");
        com.bumptech.glide.c.d("#008 Must be called on the main UI thread.");
        Q7.a(context);
        if (((Boolean) AbstractC1812p8.f20422b.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                p120p3.b.f28201a.execute(new p059h3.a(context, str, fVar, c2050to));
                return;
            }
        }
        new C1448i6(context, str, fVar.f25163a, 1, c2050to).c();
    }
}
