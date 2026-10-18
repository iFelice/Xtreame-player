package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Yo implements InterfaceC1022Zj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f17645G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0890Qd f17646H;

    public Yo(Context context, C0890Qd c0890Qd) {
        this.f17645G = context;
        this.f17646H = c0890Qd;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
        if (TextUtils.isEmpty(((Qv) tv.f16755b.f21883I).f16153e)) {
            return;
        }
        C0890Qd c0890Qd = this.f17646H;
        Context context = this.f17645G;
        p090l3.b1 b1Var = ((Yv) tv.f16754a.f17529H).f17677d;
        c0890Qd.getClass();
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15876l0)).booleanValue() && c0890Qd.e(context) && C0890Qd.g(context)) {
            synchronized (c0890Qd.f16039i) {
            }
        }
        this.f17646H.k(this.f17645G, "_aq", ((Qv) tv.f16755b.f21883I).f16153e, null);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
    }
}
