package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.an, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1066an implements X9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0734Fj f17962G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1624ld f17963H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f17964I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f17965J;

    public C1066an(C0734Fj c0734Fj, Ov ov) {
        this.f17962G = c0734Fj;
        this.f17963H = ov.f15268l;
        this.f17964I = ov.f15264j;
        this.f17965J = ov.f15266k;
    }

    @Override // com.google.android.gms.internal.ads.X9
    public final void G(C1624ld c1624ld) {
        int i8;
        String str;
        C1624ld c1624ld2 = this.f17963H;
        if (c1624ld2 != null) {
            c1624ld = c1624ld2;
        }
        if (c1624ld != null) {
            str = c1624ld.f19803G;
            i8 = c1624ld.f19804H;
        } else {
            i8 = 1;
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        BinderC1108bd binderC1108bd = new BinderC1108bd(str, i8);
        C0734Fj c0734Fj = this.f17962G;
        c0734Fj.getClass();
        c0734Fj.Z0(new C0719Ej(binderC1108bd, this.f17964I, this.f17965J, 0));
    }

    @Override // com.google.android.gms.internal.ads.X9
    public final void zzb() {
        this.f17962G.b();
    }

    @Override // com.google.android.gms.internal.ads.X9
    public final void zzc() {
        C0734Fj c0734Fj = this.f17962G;
        c0734Fj.getClass();
        c0734Fj.Z0(new F2.G(3));
    }
}
