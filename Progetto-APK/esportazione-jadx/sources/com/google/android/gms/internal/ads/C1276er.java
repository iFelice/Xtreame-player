package com.google.android.gms.internal.ads;

import android.os.Bundle;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.er, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1276er extends AbstractC1328fr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18607a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AbstractC1317fg f18608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1217dj f18609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2046tk f18610d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1690mr f18611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C2104uq f18612f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f18613g;

    public C1276er(AbstractC1317fg abstractC1317fg, C1217dj c1217dj, C2046tk c2046tk, Uv uv, C1690mr c1690mr, C2104uq c2104uq) {
        this.f18608b = abstractC1317fg;
        this.f18609c = c1217dj;
        this.f18610d = c2046tk;
        this.f18613g = uv;
        this.f18611e = c1690mr;
        this.f18612f = c2104uq;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1328fr
    public final Fw c(Yv yv, Bundle bundle, Ov ov, Tv tv) {
        Uv uv;
        int i8 = this.f18607a;
        C2046tk c2046tk = this.f18610d;
        AbstractC1317fg abstractC1317fg = this.f18608b;
        C2104uq c2104uq = this.f18612f;
        Object obj = this.f18613g;
        C1690mr c1690mr = this.f18611e;
        C1217dj c1217dj = this.f18609c;
        switch (i8) {
            case 0:
                c1217dj.f18347b = yv;
                c1217dj.f18348c = bundle;
                c1217dj.f18350e = new C1021Zi(tv, ov, c1690mr);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15903o3)).booleanValue()) {
                    c1217dj.f18351f = c2104uq;
                }
                C0671Bg c0671Bg = ((C0671Bg) abstractC1317fg).f12432c;
                C1217dj c1217dj2 = new C1217dj(c1217dj);
                C1632ll c1632ll = (C1632ll) obj;
                C0807Kh c0807Kh = new C0807Kh(null);
                Cw.f1(C2046tk.class, c2046tk);
                Cw.f1(C1632ll.class, c1632ll);
                C0823Li c0823Li = (C0823Li) new C2094ug(c0671Bg, c0807Kh, c1632ll, new C0621y(4), c2046tk, c1217dj2, new C2053tr(), null, null).f21343y0.zzb();
                return c0823Li.a(c0823Li.b());
            case 1:
                c1217dj.f18347b = yv;
                c1217dj.f18348c = bundle;
                c1217dj.f18350e = new C1021Zi(tv, ov, c1690mr);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15903o3)).booleanValue()) {
                    c1217dj.f18351f = c2104uq;
                }
                C0671Bg c0671Bg2 = ((C0671Bg) abstractC1317fg).f12432c;
                C1217dj c1217dj3 = new C1217dj(c1217dj);
                Qr qr = (Qr) obj;
                Cw.f1(C2046tk.class, c2046tk);
                Cw.f1(Qr.class, qr);
                C0823Li c0823Li2 = (C0823Li) new C0851Ng(c0671Bg2, new C0621y(4), c2046tk, c1217dj3, new C2053tr(), qr, null, null).f14937A0.zzb();
                return c0823Li2.a(c0823Li2.b());
            default:
                c1217dj.f18347b = yv;
                c1217dj.f18348c = bundle;
                c1217dj.f18350e = new C1021Zi(tv, ov, c1690mr);
                J7 j8 = Q7.f15895n3;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && (uv = (Uv) obj) != null) {
                    c1217dj.f18349d = uv;
                }
                if (((Boolean) c3099q.f26627c.a(Q7.f15903o3)).booleanValue()) {
                    c1217dj.f18351f = c2104uq;
                }
                C0671Bg c0671Bg3 = ((C0671Bg) abstractC1317fg).f12432c;
                C1217dj c1217dj4 = new C1217dj(c1217dj);
                Cw.f1(C2046tk.class, c2046tk);
                C0823Li c0823LiZzb = new C0893Qg(c0671Bg3, new C0621y(4), c2046tk, c1217dj4, new C2053tr(), null, null).zzb();
                return c0823LiZzb.a(c0823LiZzb.b());
        }
    }

    public C1276er(AbstractC1317fg abstractC1317fg, C1217dj c1217dj, Qr qr, C2046tk c2046tk, C1690mr c1690mr, C2104uq c2104uq) {
        this.f18608b = abstractC1317fg;
        this.f18609c = c1217dj;
        this.f18613g = qr;
        this.f18610d = c2046tk;
        this.f18611e = c1690mr;
        this.f18612f = c2104uq;
    }

    public C1276er(AbstractC1317fg abstractC1317fg, C1632ll c1632ll, C1217dj c1217dj, C2046tk c2046tk, C1690mr c1690mr, C2104uq c2104uq) {
        this.f18608b = abstractC1317fg;
        this.f18613g = c1632ll;
        this.f18609c = c1217dj;
        this.f18610d = c2046tk;
        this.f18611e = c1690mr;
        this.f18612f = c2104uq;
    }
}
