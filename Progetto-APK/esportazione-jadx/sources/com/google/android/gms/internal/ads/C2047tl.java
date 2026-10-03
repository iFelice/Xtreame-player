package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.api.Service;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2047tl implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f21110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f21111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f21112c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f21113d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f21114e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f21115f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f21116g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f21117h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final QJ f21118i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final QJ f21119j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final QJ f21120k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final QJ f21121l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final QJ f21122m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final QJ f21123n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final QJ f21124o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final QJ f21125p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final QJ f21126q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final QJ f21127r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final QJ f21128s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final QJ f21129t;

    public C2047tl(MJ mj, C1788ol c1788ol, MJ mj2, C2255xl c2255xl, MJ mj3, MJ mj4, MJ mj5, MJ mj6, MJ mj7, MJ mj8, C1938rg c1938rg, C1526jj c1526jj, MJ mj9, MJ mj10, MJ mj11, MJ mj12, MJ mj13, MJ mj14, MJ mj15, MJ mj16) {
        this.f21110a = mj;
        this.f21111b = c1788ol;
        this.f21112c = mj2;
        this.f21113d = c2255xl;
        this.f21114e = mj3;
        this.f21115f = mj4;
        this.f21116g = mj5;
        this.f21117h = mj6;
        this.f21118i = mj7;
        this.f21119j = mj8;
        this.f21120k = c1938rg;
        this.f21121l = c1526jj;
        this.f21122m = mj9;
        this.f21123n = mj10;
        this.f21124o = mj11;
        this.f21125p = mj12;
        this.f21126q = mj13;
        this.f21127r = mj14;
        this.f21128s = mj15;
        this.f21129t = mj16;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        JSONObject jSONObjectZzp;
        Context context = (Context) this.f21110a.zzb();
        C0856Nl c0856Nl = ((C1788ol) this.f21111b).f20319a.f19838a;
        Cw.N0(c0856Nl);
        C2218x c2218x = ((C2099ul) this.f21112c).f21367a;
        switch (c2218x.f21778G) {
            case 23:
                jSONObjectZzp = (JSONObject) c2218x.f21779H;
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                jSONObjectZzp = ((InterfaceViewOnClickListenerC1220dm) c2218x.f21779H).zzp();
                break;
            default:
                jSONObjectZzp = null;
                break;
        }
        JSONObject jSONObject = jSONObjectZzp;
        Cw.N0(jSONObject);
        return new C1995sl(context, c0856Nl, jSONObject, C2255xl.a(((C2255xl) this.f21113d).f21922a), C0884Pl.a(((C0884Pl) this.f21114e).f15466a), (H4) this.f21115f.zzb(), (C2357zj) this.f21116g.zzb(), (C1734nj) this.f21117h.zzb(), (C0855Nk) this.f21118i.zzb(), C0688Ci.a(((C0688Ci) this.f21119j).f12681a), ((C1938rg) this.f21120k).a(), ((C1526jj) this.f21121l).a(), (C0672Bh) this.f21122m.zzb(), (ViewOnClickListenerC0982Wl) this.f21123n.zzb(), (P3.a) this.f21124o.zzb(), (C0840Mk) this.f21125p.zzb(), (C1488ix) this.f21126q.zzb(), (Tw) this.f21127r.zzb(), (BinderC1431hq) this.f21128s.zzb(), (C1634ln) this.f21129t.zzb());
    }
}
