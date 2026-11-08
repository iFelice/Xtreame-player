package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2154vo extends p128q3.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f21597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f21598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ BinderC2258xo f21599g;

    public C2154vo(BinderC2258xo binderC2258xo, String str, String str2) {
        this.f21597e = str;
        this.f21598f = str2;
        this.f21599g = binderC2258xo;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void h(p043f3.j jVar) {
        this.f21599g.E3(BinderC2258xo.D3(jVar), this.f21598f);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final /* bridge */ /* synthetic */ void i(Object obj) {
        String str = this.f21597e;
        String str2 = this.f21598f;
        this.f21599g.z3((p128q3.a) obj, str, str2);
    }
}
