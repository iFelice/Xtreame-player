package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import p167v3.C3195c;

/* JADX INFO: loaded from: classes.dex */
public final class Eq implements InterfaceC1845pq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC1216di f13222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f13223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1428hn f13224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Yv f13225d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f13226e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InterfaceC2165vz f13227f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0693Cn f13228g;

    public Eq(AbstractC1216di abstractC1216di, Context context, Executor executor, C1428hn c1428hn, Yv yv, InterfaceC2165vz interfaceC2165vz, C0693Cn c0693Cn) {
        this.f13223b = context;
        this.f13222a = abstractC1216di;
        this.f13226e = executor;
        this.f13224c = c1428hn;
        this.f13225d = yv;
        this.f13227f = interfaceC2165vz;
        this.f13228g = c0693Cn;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        return Cw.d2(Cw.N1(null), new C3195c(this, tv, ov, 3), this.f13226e);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        Rv rv = ov.f15282s;
        return (rv == null || rv.f16372a == null) ? false : true;
    }
}
