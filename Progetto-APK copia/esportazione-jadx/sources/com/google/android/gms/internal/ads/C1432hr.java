package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1432hr extends AbstractC1328fr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC1317fg f19154a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1217dj f19155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Qr f19156c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2046tk f19157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1632ll f19158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0966Vj f19159f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ViewGroup f19160g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1579kk f19161h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C1690mr f19162i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C2104uq f19163j;

    public C1432hr(AbstractC1317fg abstractC1317fg, C1217dj c1217dj, Qr qr, C2046tk c2046tk, C1632ll c1632ll, C0966Vj c0966Vj, ViewGroup viewGroup, C1579kk c1579kk, C1690mr c1690mr, C2104uq c2104uq) {
        this.f19154a = abstractC1317fg;
        this.f19155b = c1217dj;
        this.f19156c = qr;
        this.f19157d = c2046tk;
        this.f19158e = c1632ll;
        this.f19159f = c0966Vj;
        this.f19160g = viewGroup;
        this.f19161h = c1579kk;
        this.f19162i = c1690mr;
        this.f19163j = c2104uq;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1328fr
    public final Fw c(Yv yv, Bundle bundle, Ov ov, Tv tv) {
        C1217dj c1217dj = this.f19155b;
        c1217dj.f18347b = yv;
        c1217dj.f18348c = bundle;
        c1217dj.f18350e = new C1021Zi(tv, ov, this.f19162i);
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15903o3)).booleanValue()) {
            c1217dj.f18351f = this.f19163j;
        }
        C0671Bg c0671Bg = ((C0671Bg) this.f19154a).f12432c;
        C1217dj c1217dj2 = new C1217dj(c1217dj);
        C1889qi c1889qi = new C1889qi(this.f19159f, this.f19161h);
        C0807Kh c0807Kh = new C0807Kh(this.f19160g);
        C2046tk c2046tk = this.f19157d;
        Cw.f1(C2046tk.class, c2046tk);
        Qr qr = this.f19156c;
        Cw.f1(Qr.class, qr);
        C2053tr c2053tr = new C2053tr();
        C1632ll c1632ll = this.f19158e;
        Cw.f1(C1632ll.class, c1632ll);
        C0823Li c0823Li = (C0823Li) new C0776Ig(c0671Bg, c0807Kh, c1632ll, new C0621y(4), c2046tk, c1217dj2, c2053tr, qr, c1889qi, null, null).f13974i0.zzb();
        return c0823Li.a(c0823Li.b());
    }
}
