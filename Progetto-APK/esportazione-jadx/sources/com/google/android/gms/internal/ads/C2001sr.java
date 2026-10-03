package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2001sr implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f20996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f20997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f20998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f20999d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f21000e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f21001f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f21002g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f21003h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final QJ f21004i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final QJ f21005j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final QJ f21006k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final QJ f21007l;

    public C2001sr(C1523jg c1523jg, MJ mj, MJ mj2, MJ mj3, MJ mj4, MJ mj5, MJ mj6, MJ mj7, MJ mj8, MJ mj9, C1224dr c1224dr, MJ mj10) {
        this.f20996a = c1523jg;
        this.f20997b = mj;
        this.f20998c = mj2;
        this.f20999d = mj3;
        this.f21000e = mj4;
        this.f21001f = mj5;
        this.f21002g = mj6;
        this.f21003h = mj7;
        this.f21004i = mj8;
        this.f21005j = mj9;
        this.f21006k = c1224dr;
        this.f21007l = mj10;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1949rr zzb() {
        Context contextA = ((C1523jg) this.f20996a).a();
        Kw kw = (Kw) this.f20997b.zzb();
        C1690mr c1690mr = (C1690mr) this.f20998c.zzb();
        C1941rj c1941rj = (C1941rj) this.f20999d.zzb();
        C1438hx c1438hx = (C1438hx) this.f21000e.zzb();
        C1488ix c1488ix = (C1488ix) this.f21001f.zzb();
        InterfaceC2356zi interfaceC2356zi = (InterfaceC2356zi) this.f21002g.zzb();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new C1949rr(contextA, kw, c1690mr, c1941rj, c1438hx, c1488ix, interfaceC2356zi, c1936re, (ScheduledExecutorService) this.f21003h.zzb(), (C2104uq) this.f21004i.zzb(), (Tw) this.f21005j.zzb(), ((C1224dr) this.f21006k).zzb(), (C0693Cn) this.f21007l.zzb());
    }
}
