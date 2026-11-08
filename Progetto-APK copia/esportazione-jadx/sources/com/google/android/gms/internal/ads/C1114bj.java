package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1114bj implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f18067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f18068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f18069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f18070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f18071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f18072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f18073g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f18074h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final QJ f18075i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final QJ f18076j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final QJ f18077k;

    public C1114bj(MJ mj, C1938rg c1938rg, MJ mj2, MJ mj3, MJ mj4, MJ mj5, C1472ig c1472ig, MJ mj6, C2212wu c2212wu, MJ mj7, MJ mj8) {
        this.f18067a = mj;
        this.f18068b = c1938rg;
        this.f18069c = mj2;
        this.f18070d = mj3;
        this.f18071e = mj4;
        this.f18072f = mj5;
        this.f18073g = c1472ig;
        this.f18074h = mj6;
        this.f18075i = c2212wu;
        this.f18076j = mj7;
        this.f18077k = mj8;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1062aj zzb() {
        Kw kw = (Kw) this.f18067a.zzb();
        p120p3.a aVarA = ((C1938rg) this.f18068b).a();
        ApplicationInfo applicationInfoZzb = ((C0754Go) this.f18069c).zzb();
        String packageName = ((C1523jg) ((C0769Ho) this.f18070d).f13791a).a().getPackageName();
        Cw.N0(packageName);
        J7 j8 = Q7.f15777a;
        return new C1062aj(kw, aVarA, applicationInfoZzb, packageName, C3099q.f26624d.f26625a.b(), (PackageInfo) this.f18071e.zzb(), HJ.a(Cw.B(this.f18072f)), ((C1472ig) this.f18073g).zzb(), (String) this.f18074h.zzb(), ((C2212wu) this.f18075i).zzb(), ((C1526jj) this.f18076j).a(), (C1839pk) this.f18077k.zzb());
    }
}
